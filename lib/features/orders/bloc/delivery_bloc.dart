import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../data/models/order.dart';
import '../../../data/repositories/order_repository.dart';

part 'delivery_event.dart';
part 'delivery_state.dart';
part 'delivery_bloc.freezed.dart';

class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  DeliveryBloc(this._orders) : super(DeliveryState.initial()) {
    on<_Started>(_onStarted);
    on<_SignatureChanged>((event, emit) => emit(state.copyWith(hasSignature: event.hasSignature)));
    on<_CashToggled>((event, emit) => emit(state.copyWith(cashCollected: event.collected)));
    on<_Confirmed>(_onConfirmed);
  }

  final OrderRepository _orders;

  Future<void> _onStarted(_Started event, Emitter<DeliveryState> emit) async {
    emit(state.copyWith(id: event.id, status: LoadStatus.loading));
    try {
      final order = await _orders.getOrder(event.id);
      emit(state.copyWith(status: LoadStatus.success, order: order));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  Future<void> _onConfirmed(_Confirmed event, Emitter<DeliveryState> emit) async {
    if (!state.canConfirm || state.actionStatus.isLoading) return;
    emit(state.copyWith(actionStatus: LoadStatus.loading, actionMessage: null));
    try {
      final order = await _orders.deliver(state.id, event.signature);
      emit(state.copyWith(order: order, actionStatus: LoadStatus.success, actionMessage: 'Order delivered'));
    } catch (e) {
      emit(state.copyWith(actionStatus: LoadStatus.failure, actionMessage: ApiException.messageOf(e)));
    }
  }
}
