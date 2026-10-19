import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'route_info.freezed.dart';

@freezed
abstract class RouteInfo with _$RouteInfo {
  const factory RouteInfo({required List<LatLng> points, required double distanceKm, required double durationMin}) =
      _RouteInfo;

  // one entry of osrm's `routes` array, geometry requested as geojson
  factory RouteInfo.fromOsrm(Map<String, dynamic> json) {
    final coordinates = (json['geometry'] as Map)['coordinates'] as List;
    return RouteInfo(
      points: [for (final c in coordinates.cast<List>()) LatLng((c[1] as num).toDouble(), (c[0] as num).toDouble())],
      distanceKm: (json['distance'] as num).toDouble() / 1000,
      durationMin: (json['duration'] as num).toDouble() / 60,
    );
  }
}
