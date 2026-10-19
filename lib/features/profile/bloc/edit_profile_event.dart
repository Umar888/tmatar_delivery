part of 'edit_profile_bloc.dart';

@freezed
sealed class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.started() = _Started;
  const factory EditProfileEvent.saved({
    required String name,
    required String email,
    required String city,
    required String vehicleType,
    required String vehicleNumber,
  }) = _Saved;
}
