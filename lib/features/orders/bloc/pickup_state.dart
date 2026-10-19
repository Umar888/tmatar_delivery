part of 'pickup_bloc.dart';

@freezed
abstract class PickupState with _$PickupState {
  const PickupState._();

  const factory PickupState({
    @Default('') String id,
    @Default(LoadStatus.initial) LoadStatus status,
    Order? order,
    String? message,
    @Default({}) Set<String> checkedIds,
    @Default(LoadStatus.initial) LoadStatus actionStatus,
    String? actionMessage,
  }) = _PickupState;

  factory PickupState.initial() => const PickupState();

  bool get allChecked => order != null && order!.items.every((i) => checkedIds.contains(i.id));
}
