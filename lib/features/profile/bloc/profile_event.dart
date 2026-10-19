part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.updated(PartnerProfile profile) = _Updated;
  const factory ProfileEvent.logoutRequested() = _LogoutRequested;
}
