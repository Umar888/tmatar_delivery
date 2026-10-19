import 'package:latlong2/latlong.dart';

class AppConstants {
  AppConstants._();

  static const appName = 'Tmatar Mart Partner';
  static const appVersion = '1.0.0';
  static const supportPhone = '18001234567';

  static const phonePrefix = '+91';
  static const otpLength = 6;
  static const otpResendSeconds = 30;
  static const demoOtp = '123456';

  static const splashDuration = Duration(milliseconds: 2200);
  static const mockLatency = Duration(milliseconds: 600);
  static const requestTimeout = Duration(seconds: 15);

  static const mapTileUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const mapUserAgent = 'com.tmatarmart.tmatar_delivery';
  static const mapAttribution = 'OpenStreetMap contributors';

  // used when gps is unavailable or the device is outside the demo city
  static const riderLocation = LatLng(22.3072, 73.1812);
  static const maxDemoDistanceKm = 50.0;
  static const locationTimeout = Duration(seconds: 8);

  static const rerouteDistanceMeters = 150.0;

  // straight line distance undersells city roads
  static const roadDistanceFactor = 1.3;

  static const vehicleTypes = ['Bike', 'Scooter', 'Bicycle'];

  static const rejectReasons = [
    'Pickup location is too far',
    'Vehicle issue',
    'Already on another delivery',
    'Personal emergency',
    'Other',
  ];
}
