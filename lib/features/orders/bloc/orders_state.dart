part of 'orders_bloc.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const OrdersState._();

  const factory OrdersState({
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(false) bool refreshing,
    @Default(0) int tab,
    @Default([]) List<Order> newOrders,
    @Default([]) List<Order> inProgress,
    @Default([]) List<Order> completed,
    String? message,
    String? acceptingId,
    @Default(LoadStatus.initial) LoadStatus actionStatus,
    String? actionMessage,
  }) = _OrdersState;

  factory OrdersState.initial() => const OrdersState();

  List<Order> get visible => switch (tab) {
    0 => newOrders,
    1 => inProgress,
    _ => completed,
  };
}
