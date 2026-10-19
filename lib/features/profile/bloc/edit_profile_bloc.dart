import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../../../core/network/api_exception.dart';
import '../../../data/models/partner_profile.dart';
import '../../../data/repositories/profile_repository.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc(this._profile) : super(EditProfileState.initial()) {
    on<_Started>(_onStarted);
    on<_Saved>(_onSaved);
  }

  final ProfileRepository _profile;

  Future<void> _onStarted(_Started event, Emitter<EditProfileState> emit) async {
    emit(state.copyWith(status: LoadStatus.loading));
    try {
      emit(state.copyWith(status: LoadStatus.success, profile: await _profile.getProfile()));
    } catch (e) {
      emit(state.copyWith(status: LoadStatus.failure, message: ApiException.messageOf(e)));
    }
  }

  Future<void> _onSaved(_Saved event, Emitter<EditProfileState> emit) async {
    final current = state.profile;
    if (current == null || state.saveStatus.isLoading) return;
    emit(state.copyWith(saveStatus: LoadStatus.loading, saveMessage: null));
    try {
      final updated = await _profile.updateProfile(
        current.copyWith(
          name: event.name,
          email: event.email,
          city: event.city,
          vehicleType: event.vehicleType,
          vehicleNumber: event.vehicleNumber,
        ),
      );
      emit(state.copyWith(profile: updated, saveStatus: LoadStatus.success, saveMessage: 'Profile updated'));
    } catch (e) {
      emit(state.copyWith(saveStatus: LoadStatus.failure, saveMessage: ApiException.messageOf(e)));
    }
  }
}
