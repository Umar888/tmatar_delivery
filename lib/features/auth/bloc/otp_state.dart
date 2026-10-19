part of 'otp_bloc.dart';

@freezed
abstract class OtpState with _$OtpState {
  const factory OtpState({
    required String phone,
    @Default('') String otp,
    @Default(LoadStatus.initial) LoadStatus status,
    String? message,
    @Default(0) int resendIn,
    @Default(false) bool resending,
    String? notice,
  }) = _OtpState;
}
