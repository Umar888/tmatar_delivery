import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../data/models/order.dart';
import '../../../data/repositories/order_repository.dart';

part 'order_detail_event.dart';
part 'order_detail_state.dart';
part 'order_detail_bloc.freezed.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  OrderDetailBloc(this._orders) : super(OrderDetailState.initial()) {
    on<_Started>(_onStarted);
    on<_Refreshed>((event, emit) => _load(emit));
    on<_AcceptRequested>((event, emit) => _run(emit, OrderAction.accept, () => _orders.accept(state.id)));
    on<_RejectRequested>((event, emit) => _run(emit, OrderAction.reject, () => _orders.reject(state.id, event.reason)));

    _sub = _orders.changes.listen((_) {
      if (!state.actionStatus.isLoading) add(const OrderDetailEvent.refreshed());
    });
  }

  final OrderRepository _orders;
  late final StreamSubscription<void> _sub;

  Future<void> _onStarted(_Started event, Emitter<OrderDetailState> emit) async {
    emit(state.copyWith(id: event.id, status: LoadStatus.loading));
    await _load(emit);
  }

  Future<void> _load(Emitter<OrderDetailState> emit) async {
    try {
      final order = await _orders.getOrder(state.id);
      emit(state.copyWith(status: LoadStatus.success, order: order, message: null));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  Future<void> _run(Emitter<OrderDetailState> emit, OrderAction action, Future<Order> Function() call) async {
    if (state.actionStatus.isLoading) return;
    emit(state.copyWith(action: action, actionStatus: LoadStatus.loading, actionMessage: null));
    try {
      final order = await call();
      emit(
        state.copyWith(
          order: order,
          actionStatus: LoadStatus.success,
          actionMessage: action == OrderAction.accept
              ? 'Order accepted. Head to the store for pickup.'
              : 'Order rejected',
        ),
      );
    } catch (e) {
      emit(state.copyWith(actionStatus: LoadStatus.failure, actionMessage: ApiException.messageOf(e)));
    }
  }

  @override
  Future<void> close() {
    _sub.cancel();
    return super.close();
  }
}
