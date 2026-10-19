part of 'delivery_bloc.dart';

@freezed
abstract class DeliveryState with _$DeliveryState {
  const DeliveryState._();

  const factory DeliveryState({
    @Default('') String id,
    @Default(LoadStatus.initial) LoadStatus status,
    Order? order,
    String? message,
    @Default(false) bool hasSignature,
    @Default(false) bool cashCollected,
    @Default(LoadStatus.initial) LoadStatus actionStatus,
    String? actionMessage,
  }) = _DeliveryState;

  factory DeliveryState.initial() => const DeliveryState();

  bool get needsCash => order?.isCod ?? false;

  bool get canConfirm => hasSignature && (!needsCash || cashCollected);
}
