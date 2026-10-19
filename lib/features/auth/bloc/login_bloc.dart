import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/utils/validators.dart';
import '../../../data/repositories/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._auth) : super(const LoginState()) {
    on<_PhoneChanged>((event, emit) => emit(state.copyWith(phone: event.phone, phoneError: null)));
    on<_Submitted>(_onSubmitted);
  }

  final AuthRepository _auth;

  Future<void> _onSubmitted(_Submitted event, Emitter<LoginState> emit) async {
    final error = Validators.phone(state.phone);
    if (error != null) {
      emit(state.copyWith(phoneError: error));
      return;
    }
    emit(state.copyWith(status: LoadStatus.loading, message: null));
    try {
      await _auth.sendOtp(state.phone.trim());
      emit(state.copyWith(status: LoadStatus.success));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }
}
