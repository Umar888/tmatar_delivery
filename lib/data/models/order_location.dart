import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'order_location.freezed.dart';

@freezed
abstract class OrderLocation with _$OrderLocation {
  const OrderLocation._();

  const factory OrderLocation({
    required String name,
    required String address,
    required String phone,
    required double lat,
    required double lng,
  }) = _OrderLocation;

  factory OrderLocation.fromJson(Map<String, dynamic> json) {
    return OrderLocation(
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String? ?? '',
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );
  }

  LatLng get latLng => LatLng(lat, lng);

  Map<String, dynamic> toJson() => {'name': name, 'address': address, 'phone': phone, 'lat': lat, 'lng': lng};
}
