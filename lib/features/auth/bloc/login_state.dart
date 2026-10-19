part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String phone,
    String? phoneError,
    @Default(LoadStatus.initial) LoadStatus status,
    String? message,
  }) = _LoginState;
}
