part of 'order_detail_bloc.dart';

@freezed
abstract class OrderDetailState with _$OrderDetailState {
  const factory OrderDetailState({
    @Default('') String id,
    @Default(LoadStatus.initial) LoadStatus status,
    Order? order,
    String? message,
    OrderAction? action,
    @Default(LoadStatus.initial) LoadStatus actionStatus,
    String? actionMessage,
  }) = _OrderDetailState;

  factory OrderDetailState.initial() => const OrderDetailState();
}
