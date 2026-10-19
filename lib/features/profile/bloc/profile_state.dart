part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.loaded(PartnerProfile profile) = ProfileLoaded;
  const factory ProfileState.error(String message) = ProfileError;
}
