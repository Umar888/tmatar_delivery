part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory LoginEvent.submitted() = _Submitted;
}
