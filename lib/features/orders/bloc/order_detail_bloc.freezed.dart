// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderDetailEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderDetailEvent()';
}


}

/// @nodoc
class $OrderDetailEventCopyWith<$Res>  {
$OrderDetailEventCopyWith(OrderDetailEvent _, $Res Function(OrderDetailEvent) __);
}


/// Adds pattern-matching-related methods to [OrderDetailEvent].
extension OrderDetailEventPatterns on OrderDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refreshed value)?  refreshed,TResult Function( _AcceptRequested value)?  acceptRequested,TResult Function( _RejectRequested value)?  rejectRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _AcceptRequested() when acceptRequested != null:
return acceptRequested(_that);case _RejectRequested() when rejectRequested != null:
return rejectRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refreshed value)  refreshed,required TResult Function( _AcceptRequested value)  acceptRequested,required TResult Function( _RejectRequested value)  rejectRequested,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refreshed():
return refreshed(_that);case _AcceptRequested():
return acceptRequested(_that);case _RejectRequested():
return rejectRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refreshed value)?  refreshed,TResult? Function( _AcceptRequested value)?  acceptRequested,TResult? Function( _RejectRequested value)?  rejectRequested,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _AcceptRequested() when acceptRequested != null:
return acceptRequested(_that);case _RejectRequested() when rejectRequested != null:
return rejectRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  started,TResult Function()?  refreshed,TResult Function()?  acceptRequested,TResult Function( String reason)?  rejectRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _Refreshed() when refreshed != null:
return refreshed();case _AcceptRequested() when acceptRequested != null:
return acceptRequested();case _RejectRequested() when rejectRequested != null:
return rejectRequested(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  started,required TResult Function()  refreshed,required TResult Function()  acceptRequested,required TResult Function( String reason)  rejectRequested,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _Refreshed():
return refreshed();case _AcceptRequested():
return acceptRequested();case _RejectRequested():
return rejectRequested(_that.reason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  started,TResult? Function()?  refreshed,TResult? Function()?  acceptRequested,TResult? Function( String reason)?  rejectRequested,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _Refreshed() when refreshed != null:
return refreshed();case _AcceptRequested() when acceptRequested != null:
return acceptRequested();case _RejectRequested() when rejectRequested != null:
return rejectRequested(_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OrderDetailEvent {
  const _Started(this.id);
  

 final  String id;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'OrderDetailEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $OrderDetailEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Refreshed implements OrderDetailEvent {
  const _Refreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderDetailEvent.refreshed()';
}


}




/// @nodoc


class _AcceptRequested implements OrderDetailEvent {
  const _AcceptRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderDetailEvent.acceptRequested()';
}


}




/// @nodoc


class _RejectRequested implements OrderDetailEvent {
  const _RejectRequested(this.reason);
  

 final  String reason;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RejectRequestedCopyWith<_RejectRequested> get copyWith => __$RejectRequestedCopyWithImpl<_RejectRequested>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RejectRequested&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reason);
}

@override
String toString() {
    return 'OrderDetailEvent.rejectRequested(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$RejectRequestedCopyWith<$Res> implements $OrderDetailEventCopyWith<$Res> {
  factory _$RejectRequestedCopyWith(_RejectRequested value, $Res Function(_RejectRequested) _then) = __$RejectRequestedCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class __$RejectRequestedCopyWithImpl<$Res>
    implements _$RejectRequestedCopyWith<$Res> {
  __$RejectRequestedCopyWithImpl(this._self, this._then);

  final _RejectRequested _self;
  final $Res Function(_RejectRequested) _then;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(_RejectRequested(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OrderDetailState {

 String get id; LoadStatus get status; Order? get order; String? get message; OrderAction? get action; LoadStatus get actionStatus; String? get actionMessage;
/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailStateCopyWith<OrderDetailState> get copyWith => _$OrderDetailStateCopyWithImpl<OrderDetailState>(this as OrderDetailState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderDetailState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailState&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.order, _this.order) || other.order == _this.order)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.actionMessage, _this.actionMessage) || other.actionMessage == _this.actionMessage));
}


@override
int get hashCode {
  final _this = this as OrderDetailState;
  return Object.hash(runtimeType,_this.id,_this.status,_this.order,_this.message,_this.action,_this.actionStatus,_this.actionMessage);
}

@override
String toString() {
  final _this = this as OrderDetailState;
  return 'OrderDetailState(id: ${_this.id}, status: ${_this.status}, order: ${_this.order}, message: ${_this.message}, action: ${_this.action}, actionStatus: ${_this.actionStatus}, actionMessage: ${_this.actionMessage})';
}


}

/// @nodoc
abstract mixin class $OrderDetailStateCopyWith<$Res>  {
  factory $OrderDetailStateCopyWith(OrderDetailState value, $Res Function(OrderDetailState) _then) = _$OrderDetailStateCopyWithImpl;
@useResult
$Res call({
 String id, LoadStatus status, Order? order, String? message, OrderAction? action, LoadStatus actionStatus, String? actionMessage
});


$OrderCopyWith<$Res>? get order;

}
/// @nodoc
class _$OrderDetailStateCopyWithImpl<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  _$OrderDetailStateCopyWithImpl(this._self, this._then);

  final OrderDetailState _self;
  final $Res Function(OrderDetailState) _then;

/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? action = freezed,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(OrderDetailState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as OrderAction?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OrderDetailState
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
}
}


/// Adds pattern-matching-related methods to [OrderDetailState].
extension OrderDetailStatePatterns on OrderDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailState value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  LoadStatus status,  Order? order,  String? message,  OrderAction? action,  LoadStatus actionStatus,  String? actionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
return $default(_that.id,_that.status,_that.order,_that.message,_that.action,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  LoadStatus status,  Order? order,  String? message,  OrderAction? action,  LoadStatus actionStatus,  String? actionMessage)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailState():
return $default(_that.id,_that.status,_that.order,_that.message,_that.action,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  LoadStatus status,  Order? order,  String? message,  OrderAction? action,  LoadStatus actionStatus,  String? actionMessage)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
return $default(_that.id,_that.status,_that.order,_that.message,_that.action,_that.actionStatus,_that.actionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _OrderDetailState implements OrderDetailState {
  const _OrderDetailState({this.id = '', this.status = LoadStatus.initial, this.order, this.message, this.action, this.actionStatus = LoadStatus.initial, this.actionMessage});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  LoadStatus status;
@override final  Order? order;
@override final  String? message;
@override final  OrderAction? action;
@override@JsonKey() final  LoadStatus actionStatus;
@override final  String? actionMessage;

/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailStateCopyWith<_OrderDetailState> get copyWith => __$OrderDetailStateCopyWithImpl<_OrderDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailState&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.message, message) || other.message == message)&&(identical(other.action, action) || other.action == action)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.actionMessage, actionMessage) || other.actionMessage == actionMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,status,order,message,action,actionStatus,actionMessage);
}

@override
String toString() {
    return 'OrderDetailState(id: $id, status: $status, order: $order, message: $message, action: $action, actionStatus: $actionStatus, actionMessage: $actionMessage)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailStateCopyWith<$Res> implements $OrderDetailStateCopyWith<$Res> {
  factory _$OrderDetailStateCopyWith(_OrderDetailState value, $Res Function(_OrderDetailState) _then) = __$OrderDetailStateCopyWithImpl;
@override @useResult
$Res call({
 String id, LoadStatus status, Order? order, String? message, OrderAction? action, LoadStatus actionStatus, String? actionMessage
});


@override $OrderCopyWith<$Res>? get order;

}
/// @nodoc
class __$OrderDetailStateCopyWithImpl<$Res>
    implements _$OrderDetailStateCopyWith<$Res> {
  __$OrderDetailStateCopyWithImpl(this._self, this._then);

  final _OrderDetailState _self;
  final $Res Function(_OrderDetailState) _then;

/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? action = freezed,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(_OrderDetailState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as OrderAction?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OrderDetailState
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
}
}

// dart format on
