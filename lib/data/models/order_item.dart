import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';

@freezed
abstract class OrderItem with _$OrderItem {
  const OrderItem._();

  const factory OrderItem({
    required String id,
    required String name,
    required String unit,
    required int quantity,
    required double price,
    required String image,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String? ?? '',
    );
  }

  double get total => price * quantity;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'unit': unit,
    'quantity': quantity,
    'price': price,
    'image': image,
  };
}
