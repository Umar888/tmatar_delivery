part of 'delivery_bloc.dart';

@freezed
sealed class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.started(String id) = _Started;
  const factory DeliveryEvent.signatureChanged(bool hasSignature) = _SignatureChanged;
  const factory DeliveryEvent.cashToggled(bool collected) = _CashToggled;
  const factory DeliveryEvent.confirmed(String signature) = _Confirmed;
}
