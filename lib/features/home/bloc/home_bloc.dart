import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../data/models/earnings_summary.dart';
import '../../../data/models/order.dart';
import '../../../data/models/partner_profile.dart';
import '../../../data/repositories/earnings_repository.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../data/repositories/profile_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._orders, this._earnings, this._profile) : super(HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_OnlineToggled>(_onOnlineToggled);
    on<_ProfileUpdated>((event, emit) => emit(state.copyWith(profile: event.profile)));

    _ordersSub = _orders.changes.listen((_) => add(const HomeEvent.refreshed()));
    _profileSub = _profile.changes.listen((p) => add(HomeEvent.profileUpdated(p)));
  }

  final OrderRepository _orders;
  final EarningsRepository _earnings;
  final ProfileRepository _profile;
  late final StreamSubscription<void> _ordersSub;
  late final StreamSubscription<PartnerProfile> _profileSub;

  Future<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: LoadStatus.loading));
    await _load(emit);
  }

  // bloc skips equal states, the flag lets pull-to-refresh know when it's done
  Future<void> _onRefreshed(_Refreshed event, Emitter<HomeState> emit) async {
    emit(state.copyWith(refreshing: true));
    await _load(emit);
    emit(state.copyWith(refreshing: false));
  }

  Future<void> _load(Emitter<HomeState> emit) async {
    try {
      final results = await Future.wait([
        _profile.getProfile(),
        _orders.getOrders(OrderListFilter.newOrders),
        _orders.getOrders(OrderListFilter.inProgress),
        _earnings.getEarnings(EarningsPeriod.daily, DateTime.now()),
      ]);
      final newOrders = results[1] as List<Order>;
      final inProgress = results[2] as List<Order>;
      emit(
        state.copyWith(
          status: LoadStatus.success,
          profile: results[0] as PartnerProfile,
          newOrders: newOrders,
          inProgress: inProgress,
          today: results[3] as EarningsSummary,
          message: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  Future<void> _onOnlineToggled(_OnlineToggled event, Emitter<HomeState> emit) async {
    emit(state.copyWith(toggleStatus: LoadStatus.loading));
    try {
      final profile = await _profile.setOnline(event.online);
      emit(
        state.copyWith(
          toggleStatus: LoadStatus.success,
          profile: profile,
          toggleMessage: profile.isOnline ? 'You are online and can receive orders' : 'You are offline now',
        ),
      );
    } catch (e) {
      emit(state.copyWith(toggleStatus: LoadStatus.failure, toggleMessage: ApiException.messageOf(e)));
    }
  }

  @override
  Future<void> close() {
    _ordersSub.cancel();
    _profileSub.cancel();
    return super.close();
  }
}
