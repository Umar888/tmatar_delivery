part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(LoadStatus.initial) LoadStatus status,
    PartnerProfile? profile,
    String? message,
    @Default(LoadStatus.initial) LoadStatus saveStatus,
    String? saveMessage,
  }) = _EditProfileState;

  factory EditProfileState.initial() => const EditProfileState();
}
