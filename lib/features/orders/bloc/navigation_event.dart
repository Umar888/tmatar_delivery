part of 'navigation_bloc.dart';

@freezed
sealed class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.started(String id, NavigationTarget target) = _Started;
  const factory NavigationEvent.locationRequested() = _LocationRequested;
  const factory NavigationEvent.positionChanged(LatLng position) = _PositionChanged;
  const factory NavigationEvent.routeRequested() = _RouteRequested;
}
