import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/utils/validators.dart';
import '../../../data/repositories/auth_repository.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(this._auth, {required String phone}) : super(OtpState(phone: phone)) {
    on<_Started>((event, emit) => _startTimer());
    on<_Ticked>((event, emit) => emit(state.copyWith(resendIn: event.secondsLeft)));
    on<_OtpChanged>((event, emit) => emit(state.copyWith(otp: event.otp, status: LoadStatus.initial)));
    on<_Submitted>(_onSubmitted);
    on<_ResendRequested>(_onResend);
  }

  final AuthRepository _auth;
  Timer? _timer;

  void _startTimer() {
    _timer?.cancel();
    add(const OtpEvent.ticked(AppConstants.otpResendSeconds));
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final left = AppConstants.otpResendSeconds - timer.tick;
      add(OtpEvent.ticked(left));
      if (left <= 0) timer.cancel();
    });
  }

  Future<void> _onSubmitted(_Submitted event, Emitter<OtpState> emit) async {
    if (state.status.isLoading) return;
    final error = Validators.otp(state.otp);
    if (error != null) {
      emit(state.copyWith(status: LoadStatus.failure, message: error));
      return;
    }
    emit(state.copyWith(status: LoadStatus.loading, message: null));
    try {
      // router redirects to home once the session is saved
      await _auth.verifyOtp(phone: state.phone, otp: state.otp);
      emit(state.copyWith(status: LoadStatus.success));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  Future<void> _onResend(_ResendRequested event, Emitter<OtpState> emit) async {
    if (state.resendIn > 0 || state.resending) return;
    emit(state.copyWith(resending: true, notice: null));
    try {
      await _auth.sendOtp(state.phone);
      emit(state.copyWith(resending: false, otp: '', notice: 'A new OTP has been sent'));
      _startTimer();
    } catch (e) {
      emit(state.copyWith(resending: false, notice: ApiException.messageOf(e)));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
