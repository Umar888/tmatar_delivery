// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouteInfo {

 List<LatLng> get points; double get distanceKm; double get durationMin;
/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteInfoCopyWith<RouteInfo> get copyWith => _$RouteInfoCopyWithImpl<RouteInfo>(this as RouteInfo, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RouteInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteInfo&&const DeepCollectionEquality().equals(other.points, _this.points)&&(identical(other.distanceKm, _this.distanceKm) || other.distanceKm == _this.distanceKm)&&(identical(other.durationMin, _this.durationMin) || other.durationMin == _this.durationMin));
}


@override
int get hashCode {
  final _this = this as RouteInfo;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.points),_this.distanceKm,_this.durationMin);
}

@override
String toString() {
  final _this = this as RouteInfo;
  return 'RouteInfo(points: ${_this.points}, distanceKm: ${_this.distanceKm}, durationMin: ${_this.durationMin})';
}


}

/// @nodoc
abstract mixin class $RouteInfoCopyWith<$Res>  {
  factory $RouteInfoCopyWith(RouteInfo value, $Res Function(RouteInfo) _then) = _$RouteInfoCopyWithImpl;
@useResult
$Res call({
 List<LatLng> points, double distanceKm, double durationMin
});




}
/// @nodoc
class _$RouteInfoCopyWithImpl<$Res>
    implements $RouteInfoCopyWith<$Res> {
  _$RouteInfoCopyWithImpl(this._self, this._then);

  final RouteInfo _self;
  final $Res Function(RouteInfo) _then;

/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? distanceKm = null,Object? durationMin = null,}) {
  return _then(RouteInfo(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<LatLng>,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,durationMin: null == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RouteInfo].
extension RouteInfoPatterns on RouteInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteInfo value)  $default,){
final _that = this;
switch (_that) {
case _RouteInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LatLng> points,  double distanceKm,  double durationMin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
return $default(_that.points,_that.distanceKm,_that.durationMin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LatLng> points,  double distanceKm,  double durationMin)  $default,) {final _that = this;
switch (_that) {
case _RouteInfo():
return $default(_that.points,_that.distanceKm,_that.durationMin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LatLng> points,  double distanceKm,  double durationMin)?  $default,) {final _that = this;
switch (_that) {
case _RouteInfo() when $default != null:
return $default(_that.points,_that.distanceKm,_that.durationMin);case _:
  return null;

}
}

}

/// @nodoc


class _RouteInfo implements RouteInfo {
  const _RouteInfo({required  List<LatLng> points, required this.distanceKm, required this.durationMin}): _points = points;
  

 final  List<LatLng> _points;
@override List<LatLng> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override final  double distanceKm;
@override final  double durationMin;

/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteInfoCopyWith<_RouteInfo> get copyWith => __$RouteInfoCopyWithImpl<_RouteInfo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteInfo&&const DeepCollectionEquality().equals(other.points, _points)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.durationMin, durationMin) || other.durationMin == durationMin));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),distanceKm,durationMin);
}

@override
String toString() {
    return 'RouteInfo(points: $points, distanceKm: $distanceKm, durationMin: $durationMin)';
}


}

/// @nodoc
abstract mixin class _$RouteInfoCopyWith<$Res> implements $RouteInfoCopyWith<$Res> {
  factory _$RouteInfoCopyWith(_RouteInfo value, $Res Function(_RouteInfo) _then) = __$RouteInfoCopyWithImpl;
@override @useResult
$Res call({
 List<LatLng> points, double distanceKm, double durationMin
});




}
/// @nodoc
class __$RouteInfoCopyWithImpl<$Res>
    implements _$RouteInfoCopyWith<$Res> {
  __$RouteInfoCopyWithImpl(this._self, this._then);

  final _RouteInfo _self;
  final $Res Function(_RouteInfo) _then;

/// Create a copy of RouteInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? distanceKm = null,Object? durationMin = null,}) {
  return _then(_RouteInfo(
points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<LatLng>,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,durationMin: null == durationMin ? _self.durationMin : durationMin // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
