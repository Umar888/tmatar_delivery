import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class Launcher {
  Launcher._();

  // false when the device can't place calls, e.g. the ios simulator or a tablet
  static Future<bool> call(String phone) => _open(Uri(scheme: 'tel', path: phone));

  static Future<bool> directions({required LatLng from, required LatLng to}) {
    final uri = Uri.https('www.google.com', '/maps/dir/', {
      'api': '1',
      'origin': '${from.latitude},${from.longitude}',
      'destination': '${to.latitude},${to.longitude}',
      'travelmode': 'two-wheeler',
    });
    return _open(uri, mode: LaunchMode.externalApplication);
  }

  static Future<bool> _open(Uri uri, {LaunchMode mode = LaunchMode.platformDefault}) async {
    try {
      return await launchUrl(uri, mode: mode);
    } catch (_) {
      return false;
    }
  }
}
