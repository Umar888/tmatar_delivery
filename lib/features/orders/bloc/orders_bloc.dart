import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/utils/formatters.dart';
import '../../../data/models/order.dart';
import '../../../data/repositories/order_repository.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc(this._orders) : super(OrdersState.initial()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_TabChanged>((event, emit) => emit(state.copyWith(tab: event.tab)));
    on<_AcceptRequested>(_onAccept);

    _sub = _orders.changes.listen((_) => add(const OrdersEvent.refreshed()));
  }

  final OrderRepository _orders;
  late final StreamSubscription<void> _sub;

  Future<void> _onStarted(_Started event, Emitter<OrdersState> emit) async {
    emit(state.copyWith(status: LoadStatus.loading));
    await _load(emit);
  }

  // bloc skips equal states, the flag lets pull-to-refresh know when it's done
  Future<void> _onRefreshed(_Refreshed event, Emitter<OrdersState> emit) async {
    emit(state.copyWith(refreshing: true));
    await _load(emit);
    emit(state.copyWith(refreshing: false));
  }

  Future<void> _load(Emitter<OrdersState> emit) async {
    try {
      final results = await Future.wait([
        _orders.getOrders(OrderListFilter.newOrders),
        _orders.getOrders(OrderListFilter.inProgress),
        _orders.getHistory(HistoryFilter.completed),
      ]);
      emit(
        state.copyWith(
          status: LoadStatus.success,
          newOrders: results[0],
          inProgress: results[1],
          completed: results[2],
          message: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  Future<void> _onAccept(_AcceptRequested event, Emitter<OrdersState> emit) async {
    if (state.acceptingId != null) return;
    emit(state.copyWith(acceptingId: event.id, actionStatus: LoadStatus.loading));
    try {
      final order = await _orders.accept(event.id);
      emit(
        state.copyWith(
          acceptingId: null,
          actionStatus: LoadStatus.success,
          actionMessage: 'Order ${Formatters.orderCode(order.id)} accepted',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(acceptingId: null, actionStatus: LoadStatus.failure, actionMessage: ApiException.messageOf(e)),
      );
    }
  }

  @override
  Future<void> close() {
    _sub.cancel();
    return super.close();
  }
}
