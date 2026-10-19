part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.refreshed() = _Refreshed;
  const factory HomeEvent.onlineToggled(bool online) = _OnlineToggled;
  const factory HomeEvent.profileUpdated(PartnerProfile profile) = _ProfileUpdated;
}
