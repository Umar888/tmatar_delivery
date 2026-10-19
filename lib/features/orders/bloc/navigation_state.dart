part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const NavigationState._();

  const factory NavigationState({
    @Default('') String id,
    @Default(NavigationTarget.pickup) NavigationTarget target,
    @Default(LoadStatus.initial) LoadStatus status,
    Order? order,
    String? message,
    @Default(AppConstants.riderLocation) LatLng rider,
    @Default(false) bool liveLocation,
    @Default(LoadStatus.initial) LoadStatus routeStatus,
    RouteInfo? route,
    LatLng? routedFrom,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState();

  bool get toPickup => target == NavigationTarget.pickup;

  // without gps, assume the rider is still at the store once the order is picked up
  LatLng? get origin => order == null ? null : (liveLocation || toPickup ? rider : order!.pickup.latLng);

  LatLng? get destination => order == null ? null : (toPickup ? order!.pickup.latLng : order!.drop.latLng);

  bool get hasRoadRoute => route != null;

  List<LatLng> get routePoints => route?.points ?? [?origin, ?destination];

  double get distanceKm {
    if (route != null) return route!.distanceKm;
    if (origin == null || destination == null) return 0;
    return NavigationBloc._distance.as(LengthUnit.Meter, origin!, destination!) /
        1000 *
        AppConstants.roadDistanceFactor;
  }
}
