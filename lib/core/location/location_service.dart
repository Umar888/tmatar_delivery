import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../constants/app_constants.dart';

class LocationService {
  static const _settings = LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 15);

  // null when location is off, permission is denied or the fix times out
  Future<LatLng?> current() async {
    if (!await _hasPermission()) return null;
    try {
      final position = await Geolocator.getCurrentPosition(locationSettings: _settings)
          .timeout(AppConstants.locationTimeout);
      return LatLng(position.latitude, position.longitude);
    } catch (_) {
      return null;
    }
  }

  Stream<LatLng> watch() =>
      Geolocator.getPositionStream(locationSettings: _settings).map((p) => LatLng(p.latitude, p.longitude));

  Future<bool>? _pendingPermission;

  // two screens asking at once would make geolocator throw, so share one request
  Future<bool> _hasPermission() =>
      _pendingPermission ??= _askPermission().whenComplete(() => _pendingPermission = null);

  Future<bool> _askPermission() async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) return false;
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) permission = await Geolocator.requestPermission();
      return permission == LocationPermission.whileInUse || permission == LocationPermission.always;
    } catch (_) {
      return false;
    }
  }
}
