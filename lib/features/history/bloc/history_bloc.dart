import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../data/models/order.dart';
import '../../../data/repositories/order_repository.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(this._orders) : super(HistoryState.initial()) {
    on<_Started>((event, emit) => _load(emit));
    on<_FilterChanged>((event, emit) {
      emit(state.copyWith(filter: event.filter));
      return _load(emit);
    });
  }

  final OrderRepository _orders;

  Future<void> _load(Emitter<HistoryState> emit) async {
    emit(state.copyWith(status: LoadStatus.loading));
    try {
      final orders = await _orders.getHistory(state.filter);
      emit(state.copyWith(status: LoadStatus.success, orders: orders, message: null));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }
}
