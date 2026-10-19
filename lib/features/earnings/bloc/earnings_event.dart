part of 'earnings_bloc.dart';

@freezed
sealed class EarningsEvent with _$EarningsEvent {
  const factory EarningsEvent.started() = _Started;
  const factory EarningsEvent.refreshed() = _Refreshed;
  const factory EarningsEvent.periodChanged(EarningsPeriod period) = _PeriodChanged;
  const factory EarningsEvent.shifted({required bool forward}) = _Shifted;
}
