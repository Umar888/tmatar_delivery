part of 'pickup_bloc.dart';

@freezed
sealed class PickupEvent with _$PickupEvent {
  const factory PickupEvent.started(String id) = _Started;
  const factory PickupEvent.itemToggled(String itemId) = _ItemToggled;
  const factory PickupEvent.confirmed() = _Confirmed;
}
