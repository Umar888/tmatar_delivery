import 'package:flutter_test/flutter_test.dart';
import 'package:tmatar_delivery/data/models/route_info.dart';

void main() {
  test('parses an osrm route with geojson geometry', () {
    final route = RouteInfo.fromOsrm({
      'distance': 2350.4,
      'duration': 412.0,
      'geometry': {
        'type': 'LineString',
        'coordinates': [
          [73.1812, 22.3072],
          [73.1750, 22.3090],
          [73.1700, 22.3106],
        ],
      },
    });

    expect(route.points, hasLength(3));
    expect(route.points.first.latitude, 22.3072);
    expect(route.points.first.longitude, 73.1812);
    expect(route.distanceKm, closeTo(2.35, 0.001));
    expect(route.durationMin, closeTo(6.87, 0.01));
  });
}
