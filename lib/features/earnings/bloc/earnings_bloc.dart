import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/utils/date_extensions.dart';
import '../../../data/models/earnings_summary.dart';
import '../../../data/repositories/earnings_repository.dart';
import '../../../data/repositories/order_repository.dart';

part 'earnings_event.dart';
part 'earnings_state.dart';
part 'earnings_bloc.freezed.dart';

class EarningsBloc extends Bloc<EarningsEvent, EarningsState> {
  EarningsBloc(this._earnings, OrderRepository orders) : super(EarningsState.initial()) {
    on<_Started>((event, emit) => _load(emit));
    on<_Refreshed>((event, emit) => _load(emit, silent: true));
    on<_PeriodChanged>((event, emit) {
      emit(state.copyWith(period: event.period, date: DateOnly.today));
      return _load(emit);
    });
    on<_Shifted>(_onShifted);

    _sub = orders.changes.listen((_) => add(const EarningsEvent.refreshed()));
  }

  final EarningsRepository _earnings;
  late final StreamSubscription<void> _sub;

  Future<void> _onShifted(_Shifted event, Emitter<EarningsState> emit) async {
    if (event.forward && !state.canGoForward) return;
    final step = event.forward ? 1 : -1;
    final d = state.date;
    final next = switch (state.period) {
      EarningsPeriod.daily => DateTime(d.year, d.month, d.day + step),
      EarningsPeriod.weekly => DateTime(d.year, d.month, d.day + 7 * step),
      EarningsPeriod.monthly => DateTime(d.year, d.month + step, 1),
    };
    final today = DateOnly.today;
    emit(state.copyWith(date: next.isAfter(today) ? today : next));
    await _load(emit);
  }

  Future<void> _load(Emitter<EarningsState> emit, {bool silent = false}) async {
    if (!silent) emit(state.copyWith(status: LoadStatus.loading));
    try {
      final summary = await _earnings.getEarnings(state.period, state.date);
      emit(state.copyWith(status: LoadStatus.success, summary: summary, message: null));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  @override
  Future<void> close() {
    _sub.cancel();
    return super.close();
  }
}
