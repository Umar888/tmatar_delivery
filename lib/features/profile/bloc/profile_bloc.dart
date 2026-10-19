import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network/api_exception.dart';
import '../../../data/models/partner_profile.dart';
import '../../../data/repositories/auth_repository.dart';
import '../../../data/repositories/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._profile, this._auth) : super(const ProfileState.loading()) {
    on<_Started>(_onStarted);
    on<_Updated>((event, emit) => emit(ProfileState.loaded(event.profile)));
    on<_LogoutRequested>((event, emit) => _auth.logout());

    _sub = _profile.changes.listen((p) => add(ProfileEvent.updated(p)));
  }

  final ProfileRepository _profile;
  final AuthRepository _auth;
  late final StreamSubscription<PartnerProfile> _sub;

  Future<void> _onStarted(_Started event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      emit(ProfileState.loaded(await _profile.getProfile()));
    } catch (e) {
      emit(ProfileState.error(ApiException.messageOf(e)));
    }
  }

  @override
  Future<void> close() {
    _sub.cancel();
    return super.close();
  }
}
