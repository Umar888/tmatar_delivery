part of 'otp_bloc.dart';

@freezed
sealed class OtpEvent with _$OtpEvent {
  const factory OtpEvent.started() = _Started;
  const factory OtpEvent.ticked(int secondsLeft) = _Ticked;
  const factory OtpEvent.otpChanged(String otp) = _OtpChanged;
  const factory OtpEvent.submitted() = _Submitted;
  const factory OtpEvent.resendRequested() = _ResendRequested;
}
