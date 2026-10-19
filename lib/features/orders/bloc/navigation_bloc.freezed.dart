// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NavigationEvent()';
}


}

/// @nodoc
class $NavigationEventCopyWith<$Res>  {
$NavigationEventCopyWith(NavigationEvent _, $Res Function(NavigationEvent) __);
}


/// Adds pattern-matching-related methods to [NavigationEvent].
extension NavigationEventPatterns on NavigationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LocationRequested value)?  locationRequested,TResult Function( _PositionChanged value)?  positionChanged,TResult Function( _RouteRequested value)?  routeRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LocationRequested() when locationRequested != null:
return locationRequested(_that);case _PositionChanged() when positionChanged != null:
return positionChanged(_that);case _RouteRequested() when routeRequested != null:
return routeRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LocationRequested value)  locationRequested,required TResult Function( _PositionChanged value)  positionChanged,required TResult Function( _RouteRequested value)  routeRequested,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LocationRequested():
return locationRequested(_that);case _PositionChanged():
return positionChanged(_that);case _RouteRequested():
return routeRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LocationRequested value)?  locationRequested,TResult? Function( _PositionChanged value)?  positionChanged,TResult? Function( _RouteRequested value)?  routeRequested,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LocationRequested() when locationRequested != null:
return locationRequested(_that);case _PositionChanged() when positionChanged != null:
return positionChanged(_that);case _RouteRequested() when routeRequested != null:
return routeRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  NavigationTarget target)?  started,TResult Function()?  locationRequested,TResult Function( LatLng position)?  positionChanged,TResult Function()?  routeRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id,_that.target);case _LocationRequested() when locationRequested != null:
return locationRequested();case _PositionChanged() when positionChanged != null:
return positionChanged(_that.position);case _RouteRequested() when routeRequested != null:
return routeRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  NavigationTarget target)  started,required TResult Function()  locationRequested,required TResult Function( LatLng position)  positionChanged,required TResult Function()  routeRequested,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id,_that.target);case _LocationRequested():
return locationRequested();case _PositionChanged():
return positionChanged(_that.position);case _RouteRequested():
return routeRequested();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  NavigationTarget target)?  started,TResult? Function()?  locationRequested,TResult? Function( LatLng position)?  positionChanged,TResult? Function()?  routeRequested,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id,_that.target);case _LocationRequested() when locationRequested != null:
return locationRequested();case _PositionChanged() when positionChanged != null:
return positionChanged(_that.position);case _RouteRequested() when routeRequested != null:
return routeRequested();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements NavigationEvent {
  const _Started(this.id, this.target);
  

 final  String id;
 final  NavigationTarget target;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.id, id) || other.id == id)&&(identical(other.target, target) || other.target == target));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,target);
}

@override
String toString() {
    return 'NavigationEvent.started(id: $id, target: $target)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $NavigationEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 String id, NavigationTarget target
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? target = null,}) {
  return _then(_Started(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as NavigationTarget,
  ));
}


}

/// @nodoc


class _LocationRequested implements NavigationEvent {
  const _LocationRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NavigationEvent.locationRequested()';
}


}




/// @nodoc


class _PositionChanged implements NavigationEvent {
  const _PositionChanged(this.position);
  

 final  LatLng position;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PositionChangedCopyWith<_PositionChanged> get copyWith => __$PositionChangedCopyWithImpl<_PositionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PositionChanged&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode {
    return Object.hash(runtimeType,position);
}

@override
String toString() {
    return 'NavigationEvent.positionChanged(position: $position)';
}


}

/// @nodoc
abstract mixin class _$PositionChangedCopyWith<$Res> implements $NavigationEventCopyWith<$Res> {
  factory _$PositionChangedCopyWith(_PositionChanged value, $Res Function(_PositionChanged) _then) = __$PositionChangedCopyWithImpl;
@useResult
$Res call({
 LatLng position
});




}
/// @nodoc
class __$PositionChangedCopyWithImpl<$Res>
    implements _$PositionChangedCopyWith<$Res> {
  __$PositionChangedCopyWithImpl(this._self, this._then);

  final _PositionChanged _self;
  final $Res Function(_PositionChanged) _then;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(_PositionChanged(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as LatLng,
  ));
}


}

/// @nodoc


class _RouteRequested implements NavigationEvent {
  const _RouteRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NavigationEvent.routeRequested()';
}


}




/// @nodoc
mixin _$NavigationState {

 String get id; NavigationTarget get target; LoadStatus get status; Order? get order; String? get message; LatLng get rider; bool get liveLocation; LoadStatus get routeStatus; RouteInfo? get route; LatLng? get routedFrom;
/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationStateCopyWith<NavigationState> get copyWith => _$NavigationStateCopyWithImpl<NavigationState>(this as NavigationState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NavigationState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationState&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.target, _this.target) || other.target == _this.target)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.order, _this.order) || other.order == _this.order)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.rider, _this.rider) || other.rider == _this.rider)&&(identical(other.liveLocation, _this.liveLocation) || other.liveLocation == _this.liveLocation)&&(identical(other.routeStatus, _this.routeStatus) || other.routeStatus == _this.routeStatus)&&(identical(other.route, _this.route) || other.route == _this.route)&&(identical(other.routedFrom, _this.routedFrom) || other.routedFrom == _this.routedFrom));
}


@override
int get hashCode {
  final _this = this as NavigationState;
  return Object.hash(runtimeType,_this.id,_this.target,_this.status,_this.order,_this.message,_this.rider,_this.liveLocation,_this.routeStatus,_this.route,_this.routedFrom);
}

@override
String toString() {
  final _this = this as NavigationState;
  return 'NavigationState(id: ${_this.id}, target: ${_this.target}, status: ${_this.status}, order: ${_this.order}, message: ${_this.message}, rider: ${_this.rider}, liveLocation: ${_this.liveLocation}, routeStatus: ${_this.routeStatus}, route: ${_this.route}, routedFrom: ${_this.routedFrom})';
}


}

/// @nodoc
abstract mixin class $NavigationStateCopyWith<$Res>  {
  factory $NavigationStateCopyWith(NavigationState value, $Res Function(NavigationState) _then) = _$NavigationStateCopyWithImpl;
@useResult
$Res call({
 String id, NavigationTarget target, LoadStatus status, Order? order, String? message, LatLng rider, bool liveLocation, LoadStatus routeStatus, RouteInfo? route, LatLng? routedFrom
});


$OrderCopyWith<$Res>? get order;$RouteInfoCopyWith<$Res>? get route;

}
/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._self, this._then);

  final NavigationState _self;
  final $Res Function(NavigationState) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? target = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? rider = null,Object? liveLocation = null,Object? routeStatus = null,Object? route = freezed,Object? routedFrom = freezed,}) {
  return _then(NavigationState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as NavigationTarget,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,rider: null == rider ? _self.rider : rider // ignore: cast_nullable_to_non_nullable
as LatLng,liveLocation: null == liveLocation ? _self.liveLocation : liveLocation // ignore: cast_nullable_to_non_nullable
as bool,routeStatus: null == routeStatus ? _self.routeStatus : routeStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as RouteInfo?,routedFrom: freezed == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}
/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteInfoCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $RouteInfoCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// Adds pattern-matching-related methods to [NavigationState].
extension NavigationStatePatterns on NavigationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavigationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavigationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavigationState value)  $default,){
final _that = this;
switch (_that) {
case _NavigationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavigationState value)?  $default,){
final _that = this;
switch (_that) {
case _NavigationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  NavigationTarget target,  LoadStatus status,  Order? order,  String? message,  LatLng rider,  bool liveLocation,  LoadStatus routeStatus,  RouteInfo? route,  LatLng? routedFrom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavigationState() when $default != null:
return $default(_that.id,_that.target,_that.status,_that.order,_that.message,_that.rider,_that.liveLocation,_that.routeStatus,_that.route,_that.routedFrom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  NavigationTarget target,  LoadStatus status,  Order? order,  String? message,  LatLng rider,  bool liveLocation,  LoadStatus routeStatus,  RouteInfo? route,  LatLng? routedFrom)  $default,) {final _that = this;
switch (_that) {
case _NavigationState():
return $default(_that.id,_that.target,_that.status,_that.order,_that.message,_that.rider,_that.liveLocation,_that.routeStatus,_that.route,_that.routedFrom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  NavigationTarget target,  LoadStatus status,  Order? order,  String? message,  LatLng rider,  bool liveLocation,  LoadStatus routeStatus,  RouteInfo? route,  LatLng? routedFrom)?  $default,) {final _that = this;
switch (_that) {
case _NavigationState() when $default != null:
return $default(_that.id,_that.target,_that.status,_that.order,_that.message,_that.rider,_that.liveLocation,_that.routeStatus,_that.route,_that.routedFrom);case _:
  return null;

}
}

}

/// @nodoc


class _NavigationState extends NavigationState {
  const _NavigationState({this.id = '', this.target = NavigationTarget.pickup, this.status = LoadStatus.initial, this.order, this.message, this.rider = AppConstants.riderLocation, this.liveLocation = false, this.routeStatus = LoadStatus.initial, this.route, this.routedFrom}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  NavigationTarget target;
@override@JsonKey() final  LoadStatus status;
@override final  Order? order;
@override final  String? message;
@override@JsonKey() final  LatLng rider;
@override@JsonKey() final  bool liveLocation;
@override@JsonKey() final  LoadStatus routeStatus;
@override final  RouteInfo? route;
@override final  LatLng? routedFrom;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationStateCopyWith<_NavigationState> get copyWith => __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationState&&(identical(other.id, id) || other.id == id)&&(identical(other.target, target) || other.target == target)&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.message, message) || other.message == message)&&(identical(other.rider, rider) || other.rider == rider)&&(identical(other.liveLocation, liveLocation) || other.liveLocation == liveLocation)&&(identical(other.routeStatus, routeStatus) || other.routeStatus == routeStatus)&&(identical(other.route, route) || other.route == route)&&(identical(other.routedFrom, routedFrom) || other.routedFrom == routedFrom));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,target,status,order,message,rider,liveLocation,routeStatus,route,routedFrom);
}

@override
String toString() {
    return 'NavigationState(id: $id, target: $target, status: $status, order: $order, message: $message, rider: $rider, liveLocation: $liveLocation, routeStatus: $routeStatus, route: $route, routedFrom: $routedFrom)';
}


}

/// @nodoc
abstract mixin class _$NavigationStateCopyWith<$Res> implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(_NavigationState value, $Res Function(_NavigationState) _then) = __$NavigationStateCopyWithImpl;
@override @useResult
$Res call({
 String id, NavigationTarget target, LoadStatus status, Order? order, String? message, LatLng rider, bool liveLocation, LoadStatus routeStatus, RouteInfo? route, LatLng? routedFrom
});


@override $OrderCopyWith<$Res>? get order;@override $RouteInfoCopyWith<$Res>? get route;

}
/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(this._self, this._then);

  final _NavigationState _self;
  final $Res Function(_NavigationState) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? target = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? rider = null,Object? liveLocation = null,Object? routeStatus = null,Object? route = freezed,Object? routedFrom = freezed,}) {
  return _then(_NavigationState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,target: null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as NavigationTarget,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,rider: null == rider ? _self.rider : rider // ignore: cast_nullable_to_non_nullable
as LatLng,liveLocation: null == liveLocation ? _self.liveLocation : liveLocation // ignore: cast_nullable_to_non_nullable
as bool,routeStatus: null == routeStatus ? _self.routeStatus : routeStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as RouteInfo?,routedFrom: freezed == routedFrom ? _self.routedFrom : routedFrom // ignore: cast_nullable_to_non_nullable
as LatLng?,
  ));
}

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteInfoCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $RouteInfoCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}

// dart format on
