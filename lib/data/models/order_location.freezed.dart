// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderLocation {

 String get name; String get address; String get phone; double get lat; double get lng;
/// Create a copy of OrderLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderLocationCopyWith<OrderLocation> get copyWith => _$OrderLocationCopyWithImpl<OrderLocation>(this as OrderLocation, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderLocation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderLocation&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.lat, _this.lat) || other.lat == _this.lat)&&(identical(other.lng, _this.lng) || other.lng == _this.lng));
}


@override
int get hashCode {
  final _this = this as OrderLocation;
  return Object.hash(runtimeType,_this.name,_this.address,_this.phone,_this.lat,_this.lng);
}

@override
String toString() {
  final _this = this as OrderLocation;
  return 'OrderLocation(name: ${_this.name}, address: ${_this.address}, phone: ${_this.phone}, lat: ${_this.lat}, lng: ${_this.lng})';
}


}

/// @nodoc
abstract mixin class $OrderLocationCopyWith<$Res>  {
  factory $OrderLocationCopyWith(OrderLocation value, $Res Function(OrderLocation) _then) = _$OrderLocationCopyWithImpl;
@useResult
$Res call({
 String name, String address, String phone, double lat, double lng
});




}
/// @nodoc
class _$OrderLocationCopyWithImpl<$Res>
    implements $OrderLocationCopyWith<$Res> {
  _$OrderLocationCopyWithImpl(this._self, this._then);

  final OrderLocation _self;
  final $Res Function(OrderLocation) _then;

/// Create a copy of OrderLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = null,Object? phone = null,Object? lat = null,Object? lng = null,}) {
  return _then(OrderLocation(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderLocation].
extension OrderLocationPatterns on OrderLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderLocation value)  $default,){
final _that = this;
switch (_that) {
case _OrderLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderLocation value)?  $default,){
final _that = this;
switch (_that) {
case _OrderLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String address,  String phone,  double lat,  double lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderLocation() when $default != null:
return $default(_that.name,_that.address,_that.phone,_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String address,  String phone,  double lat,  double lng)  $default,) {final _that = this;
switch (_that) {
case _OrderLocation():
return $default(_that.name,_that.address,_that.phone,_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String address,  String phone,  double lat,  double lng)?  $default,) {final _that = this;
switch (_that) {
case _OrderLocation() when $default != null:
return $default(_that.name,_that.address,_that.phone,_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc


class _OrderLocation extends OrderLocation {
  const _OrderLocation({required this.name, required this.address, required this.phone, required this.lat, required this.lng}): super._();
  

@override final  String name;
@override final  String address;
@override final  String phone;
@override final  double lat;
@override final  double lng;

/// Create a copy of OrderLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderLocationCopyWith<_OrderLocation> get copyWith => __$OrderLocationCopyWithImpl<_OrderLocation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderLocation&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,address,phone,lat,lng);
}

@override
String toString() {
    return 'OrderLocation(name: $name, address: $address, phone: $phone, lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$OrderLocationCopyWith<$Res> implements $OrderLocationCopyWith<$Res> {
  factory _$OrderLocationCopyWith(_OrderLocation value, $Res Function(_OrderLocation) _then) = __$OrderLocationCopyWithImpl;
@override @useResult
$Res call({
 String name, String address, String phone, double lat, double lng
});




}
/// @nodoc
class __$OrderLocationCopyWithImpl<$Res>
    implements _$OrderLocationCopyWith<$Res> {
  __$OrderLocationCopyWithImpl(this._self, this._then);

  final _OrderLocation _self;
  final $Res Function(_OrderLocation) _then;

/// Create a copy of OrderLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = null,Object? phone = null,Object? lat = null,Object? lng = null,}) {
  return _then(_OrderLocation(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
