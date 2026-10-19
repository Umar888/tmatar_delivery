part of 'history_bloc.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState({
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(HistoryFilter.all) HistoryFilter filter,
    @Default([]) List<Order> orders,
    String? message,
  }) = _HistoryState;

  factory HistoryState.initial() => const HistoryState();
}
