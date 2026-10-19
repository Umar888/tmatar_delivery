part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(false) bool refreshing,
    PartnerProfile? profile,
    @Default([]) List<Order> newOrders,
    @Default([]) List<Order> inProgress,
    EarningsSummary? today,
    String? message,
    @Default(LoadStatus.initial) LoadStatus toggleStatus,
    String? toggleMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();

  bool get isOnline => profile?.isOnline ?? false;

  Order? get activeOrder => inProgress.isEmpty ? null : inProgress.first;

  List<Order> get recentOrders => [...inProgress.skip(1), ...newOrders].take(5).toList();
}
