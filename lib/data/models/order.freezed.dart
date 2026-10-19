// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Order {

 String get id; OrderStatus get status; List<OrderItem> get items; OrderLocation get pickup; OrderLocation get drop; double get distanceKm; double get totalAmount; double get deliveryFee; bool get isCod; DateTime get createdAt; DateTime? get deliveredAt; String? get cancelReason;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Order;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.pickup, _this.pickup) || other.pickup == _this.pickup)&&(identical(other.drop, _this.drop) || other.drop == _this.drop)&&(identical(other.distanceKm, _this.distanceKm) || other.distanceKm == _this.distanceKm)&&(identical(other.totalAmount, _this.totalAmount) || other.totalAmount == _this.totalAmount)&&(identical(other.deliveryFee, _this.deliveryFee) || other.deliveryFee == _this.deliveryFee)&&(identical(other.isCod, _this.isCod) || other.isCod == _this.isCod)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.deliveredAt, _this.deliveredAt) || other.deliveredAt == _this.deliveredAt)&&(identical(other.cancelReason, _this.cancelReason) || other.cancelReason == _this.cancelReason));
}


@override
int get hashCode {
  final _this = this as Order;
  return Object.hash(runtimeType,_this.id,_this.status,const DeepCollectionEquality().hash(_this.items),_this.pickup,_this.drop,_this.distanceKm,_this.totalAmount,_this.deliveryFee,_this.isCod,_this.createdAt,_this.deliveredAt,_this.cancelReason);
}

@override
String toString() {
  final _this = this as Order;
  return 'Order(id: ${_this.id}, status: ${_this.status}, items: ${_this.items}, pickup: ${_this.pickup}, drop: ${_this.drop}, distanceKm: ${_this.distanceKm}, totalAmount: ${_this.totalAmount}, deliveryFee: ${_this.deliveryFee}, isCod: ${_this.isCod}, createdAt: ${_this.createdAt}, deliveredAt: ${_this.deliveredAt}, cancelReason: ${_this.cancelReason})';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 String id, OrderStatus status, List<OrderItem> items, OrderLocation pickup, OrderLocation drop, double distanceKm, double totalAmount, double deliveryFee, bool isCod, DateTime createdAt, DateTime? deliveredAt, String? cancelReason
});


$OrderLocationCopyWith<$Res> get pickup;$OrderLocationCopyWith<$Res> get drop;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? items = null,Object? pickup = null,Object? drop = null,Object? distanceKm = null,Object? totalAmount = null,Object? deliveryFee = null,Object? isCod = null,Object? createdAt = null,Object? deliveredAt = freezed,Object? cancelReason = freezed,}) {
  return _then(Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,pickup: null == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as OrderLocation,drop: null == drop ? _self.drop : drop // ignore: cast_nullable_to_non_nullable
as OrderLocation,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,isCod: null == isCod ? _self.isCod : isCod // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get pickup {
  
  return $OrderLocationCopyWith<$Res>(_self.pickup, (value) {
    return _then(_self.copyWith(pickup: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get drop {
  
  return $OrderLocationCopyWith<$Res>(_self.drop, (value) {
    return _then(_self.copyWith(drop: value));
  });
}
}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  OrderStatus status,  List<OrderItem> items,  OrderLocation pickup,  OrderLocation drop,  double distanceKm,  double totalAmount,  double deliveryFee,  bool isCod,  DateTime createdAt,  DateTime? deliveredAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.status,_that.items,_that.pickup,_that.drop,_that.distanceKm,_that.totalAmount,_that.deliveryFee,_that.isCod,_that.createdAt,_that.deliveredAt,_that.cancelReason);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  OrderStatus status,  List<OrderItem> items,  OrderLocation pickup,  OrderLocation drop,  double distanceKm,  double totalAmount,  double deliveryFee,  bool isCod,  DateTime createdAt,  DateTime? deliveredAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.status,_that.items,_that.pickup,_that.drop,_that.distanceKm,_that.totalAmount,_that.deliveryFee,_that.isCod,_that.createdAt,_that.deliveredAt,_that.cancelReason);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  OrderStatus status,  List<OrderItem> items,  OrderLocation pickup,  OrderLocation drop,  double distanceKm,  double totalAmount,  double deliveryFee,  bool isCod,  DateTime createdAt,  DateTime? deliveredAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.status,_that.items,_that.pickup,_that.drop,_that.distanceKm,_that.totalAmount,_that.deliveryFee,_that.isCod,_that.createdAt,_that.deliveredAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc


class _Order extends Order {
  const _Order({required this.id, required this.status, required  List<OrderItem> items, required this.pickup, required this.drop, required this.distanceKm, required this.totalAmount, required this.deliveryFee, required this.isCod, required this.createdAt, this.deliveredAt, this.cancelReason}): _items = items,super._();
  

@override final  String id;
@override final  OrderStatus status;
 final  List<OrderItem> _items;
@override List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  OrderLocation pickup;
@override final  OrderLocation drop;
@override final  double distanceKm;
@override final  double totalAmount;
@override final  double deliveryFee;
@override final  bool isCod;
@override final  DateTime createdAt;
@override final  DateTime? deliveredAt;
@override final  String? cancelReason;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.pickup, pickup) || other.pickup == pickup)&&(identical(other.drop, drop) || other.drop == drop)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.isCod, isCod) || other.isCod == isCod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,status,const DeepCollectionEquality().hash(_items),pickup,drop,distanceKm,totalAmount,deliveryFee,isCod,createdAt,deliveredAt,cancelReason);
}

@override
String toString() {
    return 'Order(id: $id, status: $status, items: $items, pickup: $pickup, drop: $drop, distanceKm: $distanceKm, totalAmount: $totalAmount, deliveryFee: $deliveryFee, isCod: $isCod, createdAt: $createdAt, deliveredAt: $deliveredAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 String id, OrderStatus status, List<OrderItem> items, OrderLocation pickup, OrderLocation drop, double distanceKm, double totalAmount, double deliveryFee, bool isCod, DateTime createdAt, DateTime? deliveredAt, String? cancelReason
});


@override $OrderLocationCopyWith<$Res> get pickup;@override $OrderLocationCopyWith<$Res> get drop;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? items = null,Object? pickup = null,Object? drop = null,Object? distanceKm = null,Object? totalAmount = null,Object? deliveryFee = null,Object? isCod = null,Object? createdAt = null,Object? deliveredAt = freezed,Object? cancelReason = freezed,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,pickup: null == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as OrderLocation,drop: null == drop ? _self.drop : drop // ignore: cast_nullable_to_non_nullable
as OrderLocation,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,isCod: null == isCod ? _self.isCod : isCod // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get pickup {
  
  return $OrderLocationCopyWith<$Res>(_self.pickup, (value) {
    return _then(_self.copyWith(pickup: value));
  });
}/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<$Res> get drop {
  
  return $OrderLocationCopyWith<$Res>(_self.drop, (value) {
    return _then(_self.copyWith(drop: value));
  });
}
}

// dart format on
