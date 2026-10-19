part of 'order_detail_bloc.dart';

@freezed
sealed class OrderDetailEvent with _$OrderDetailEvent {
  const factory OrderDetailEvent.started(String id) = _Started;
  const factory OrderDetailEvent.refreshed() = _Refreshed;
  const factory OrderDetailEvent.acceptRequested() = _AcceptRequested;
  const factory OrderDetailEvent.rejectRequested(String reason) = _RejectRequested;
}
