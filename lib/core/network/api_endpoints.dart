import 'package:latlong2/latlong.dart';

class ApiEndpoints {
  ApiEndpoints._();

  static const baseUrl = 'https://api.tmatarmart.com';

  static const sendOtp = '/api/auth/send-otp';
  static const verifyOtp = '/api/auth/verify-otp';

  static const orders = '/api/delivery/orders';
  static String order(String id) => '$orders/$id';
  static String accept(String id) => '${order(id)}/accept';
  static String reject(String id) => '${order(id)}/reject';
  static String pickup(String id) => '${order(id)}/pickup';
  static String deliver(String id) => '${order(id)}/deliver';

  static const earnings = '/api/delivery/earnings';
  static const profile = '/api/delivery/profile';

  // public osrm demo server, no key needed, fine for light use
  static const osrmBaseUrl = 'https://router.project-osrm.org';
  static String route(LatLng from, LatLng to) =>
      '/route/v1/driving/${from.longitude},${from.latitude};${to.longitude},${to.latitude}';
}
