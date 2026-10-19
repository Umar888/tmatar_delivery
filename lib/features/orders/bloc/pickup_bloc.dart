import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../data/models/order.dart';
import '../../../data/repositories/order_repository.dart';

part 'pickup_event.dart';
part 'pickup_state.dart';
part 'pickup_bloc.freezed.dart';

class PickupBloc extends Bloc<PickupEvent, PickupState> {
  PickupBloc(this._orders) : super(PickupState.initial()) {
    on<_Started>(_onStarted);
    on<_ItemToggled>(_onItemToggled);
    on<_Confirmed>(_onConfirmed);
  }

  final OrderRepository _orders;

  Future<void> _onStarted(_Started event, Emitter<PickupState> emit) async {
    emit(state.copyWith(id: event.id, status: LoadStatus.loading));
    try {
      final order = await _orders.getOrder(event.id);
      emit(state.copyWith(status: LoadStatus.success, order: order));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  void _onItemToggled(_ItemToggled event, Emitter<PickupState> emit) {
    final checkedIds = {...state.checkedIds};
    if (!checkedIds.remove(event.itemId)) checkedIds.add(event.itemId);
    emit(state.copyWith(checkedIds: checkedIds));
  }

  Future<void> _onConfirmed(_Confirmed event, Emitter<PickupState> emit) async {
    if (!state.allChecked || state.actionStatus.isLoading) return;
    emit(state.copyWith(actionStatus: LoadStatus.loading, actionMessage: null));
    try {
      final order = await _orders.pickup(state.id, state.checkedIds.toList());
      emit(state.copyWith(order: order, actionStatus: LoadStatus.success, actionMessage: 'Order picked up'));
    } catch (e) {
      emit(state.copyWith(actionStatus: LoadStatus.failure, actionMessage: ApiException.messageOf(e)));
    }
  }
}
