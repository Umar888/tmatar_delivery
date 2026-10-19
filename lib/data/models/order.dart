import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums.dart';
import 'order_item.dart';
import 'order_location.dart';

part 'order.freezed.dart';

@freezed
abstract class Order with _$Order {
  const Order._();

  const factory Order({
    required String id,
    required OrderStatus status,
    required List<OrderItem> items,
    required OrderLocation pickup,
    required OrderLocation drop,
    required double distanceKm,
    required double totalAmount,
    required double deliveryFee,
    required bool isCod,
    required DateTime createdAt,
    DateTime? deliveredAt,
    String? cancelReason,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'] as String,
      status: OrderStatus.fromApi(json['status'] as String?),
      items: (json['items'] as List? ?? [])
          .map((e) => OrderItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      pickup: OrderLocation.fromJson(Map<String, dynamic>.from(json['pickup'] as Map)),
      drop: OrderLocation.fromJson(Map<String, dynamic>.from(json['drop'] as Map)),
      distanceKm: (json['distance_km'] as num).toDouble(),
      totalAmount: (json['total_amount'] as num).toDouble(),
      deliveryFee: (json['delivery_fee'] as num?)?.toDouble() ?? 0,
      isCod: json['is_cod'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      deliveredAt: json['delivered_at'] == null ? null : DateTime.parse(json['delivered_at'] as String),
      cancelReason: json['cancel_reason'] as String?,
    );
  }

  int get itemCount => items.length;

  Map<String, dynamic> toJson() => {
    'id': id,
    'status': status.apiValue,
    'items': items.map((e) => e.toJson()).toList(),
    'pickup': pickup.toJson(),
    'drop': drop.toJson(),
    'distance_km': distanceKm,
    'total_amount': totalAmount,
    'delivery_fee': deliveryFee,
    'is_cod': isCod,
    'created_at': createdAt.toIso8601String(),
    'delivered_at': deliveredAt?.toIso8601String(),
    'cancel_reason': cancelReason,
  };
}
