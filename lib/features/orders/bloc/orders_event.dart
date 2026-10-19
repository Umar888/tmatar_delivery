part of 'orders_bloc.dart';

@freezed
sealed class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.started() = _Started;
  const factory OrdersEvent.refreshed() = _Refreshed;
  const factory OrdersEvent.tabChanged(int tab) = _TabChanged;
  const factory OrdersEvent.acceptRequested(String id) = _AcceptRequested;
}
