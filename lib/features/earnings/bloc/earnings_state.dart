part of 'earnings_bloc.dart';

@freezed
abstract class EarningsState with _$EarningsState {
  const EarningsState._();

  const factory EarningsState({
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(EarningsPeriod.daily) EarningsPeriod period,
    required DateTime date,
    EarningsSummary? summary,
    String? message,
  }) = _EarningsState;

  factory EarningsState.initial() => EarningsState(date: DateOnly.today);

  bool get canGoForward {
    final today = DateOnly.today;
    return switch (period) {
      EarningsPeriod.daily => date.isBefore(today),
      EarningsPeriod.weekly => date.add(Duration(days: 7 - date.weekday)).isBefore(today),
      EarningsPeriod.monthly => date.year < today.year || date.month < today.month,
    };
  }
}
