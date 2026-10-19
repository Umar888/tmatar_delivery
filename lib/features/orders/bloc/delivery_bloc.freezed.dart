// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeliveryEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DeliveryEvent()';
}


}

/// @nodoc
class $DeliveryEventCopyWith<$Res>  {
$DeliveryEventCopyWith(DeliveryEvent _, $Res Function(DeliveryEvent) __);
}


/// Adds pattern-matching-related methods to [DeliveryEvent].
extension DeliveryEventPatterns on DeliveryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _SignatureChanged value)?  signatureChanged,TResult Function( _CashToggled value)?  cashToggled,TResult Function( _Confirmed value)?  confirmed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SignatureChanged() when signatureChanged != null:
return signatureChanged(_that);case _CashToggled() when cashToggled != null:
return cashToggled(_that);case _Confirmed() when confirmed != null:
return confirmed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _SignatureChanged value)  signatureChanged,required TResult Function( _CashToggled value)  cashToggled,required TResult Function( _Confirmed value)  confirmed,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _SignatureChanged():
return signatureChanged(_that);case _CashToggled():
return cashToggled(_that);case _Confirmed():
return confirmed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _SignatureChanged value)?  signatureChanged,TResult? Function( _CashToggled value)?  cashToggled,TResult? Function( _Confirmed value)?  confirmed,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SignatureChanged() when signatureChanged != null:
return signatureChanged(_that);case _CashToggled() when cashToggled != null:
return cashToggled(_that);case _Confirmed() when confirmed != null:
return confirmed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  started,TResult Function( bool hasSignature)?  signatureChanged,TResult Function( bool collected)?  cashToggled,TResult Function( String signature)?  confirmed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _SignatureChanged() when signatureChanged != null:
return signatureChanged(_that.hasSignature);case _CashToggled() when cashToggled != null:
return cashToggled(_that.collected);case _Confirmed() when confirmed != null:
return confirmed(_that.signature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  started,required TResult Function( bool hasSignature)  signatureChanged,required TResult Function( bool collected)  cashToggled,required TResult Function( String signature)  confirmed,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _SignatureChanged():
return signatureChanged(_that.hasSignature);case _CashToggled():
return cashToggled(_that.collected);case _Confirmed():
return confirmed(_that.signature);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  started,TResult? Function( bool hasSignature)?  signatureChanged,TResult? Function( bool collected)?  cashToggled,TResult? Function( String signature)?  confirmed,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _SignatureChanged() when signatureChanged != null:
return signatureChanged(_that.hasSignature);case _CashToggled() when cashToggled != null:
return cashToggled(_that.collected);case _Confirmed() when confirmed != null:
return confirmed(_that.signature);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DeliveryEvent {
  const _Started(this.id);
  

 final  String id;

/// Create a copy of DeliveryEvent
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
    return 'DeliveryEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $DeliveryEventCopyWith<$Res> {
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

/// Create a copy of DeliveryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SignatureChanged implements DeliveryEvent {
  const _SignatureChanged(this.hasSignature);
  

 final  bool hasSignature;

/// Create a copy of DeliveryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignatureChangedCopyWith<_SignatureChanged> get copyWith => __$SignatureChangedCopyWithImpl<_SignatureChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignatureChanged&&(identical(other.hasSignature, hasSignature) || other.hasSignature == hasSignature));
}


@override
int get hashCode {
    return Object.hash(runtimeType,hasSignature);
}

@override
String toString() {
    return 'DeliveryEvent.signatureChanged(hasSignature: $hasSignature)';
}


}

/// @nodoc
abstract mixin class _$SignatureChangedCopyWith<$Res> implements $DeliveryEventCopyWith<$Res> {
  factory _$SignatureChangedCopyWith(_SignatureChanged value, $Res Function(_SignatureChanged) _then) = __$SignatureChangedCopyWithImpl;
@useResult
$Res call({
 bool hasSignature
});




}
/// @nodoc
class __$SignatureChangedCopyWithImpl<$Res>
    implements _$SignatureChangedCopyWith<$Res> {
  __$SignatureChangedCopyWithImpl(this._self, this._then);

  final _SignatureChanged _self;
  final $Res Function(_SignatureChanged) _then;

/// Create a copy of DeliveryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasSignature = null,}) {
  return _then(_SignatureChanged(
null == hasSignature ? _self.hasSignature : hasSignature // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _CashToggled implements DeliveryEvent {
  const _CashToggled(this.collected);
  

 final  bool collected;

/// Create a copy of DeliveryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashToggledCopyWith<_CashToggled> get copyWith => __$CashToggledCopyWithImpl<_CashToggled>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashToggled&&(identical(other.collected, collected) || other.collected == collected));
}


@override
int get hashCode {
    return Object.hash(runtimeType,collected);
}

@override
String toString() {
    return 'DeliveryEvent.cashToggled(collected: $collected)';
}


}

/// @nodoc
abstract mixin class _$CashToggledCopyWith<$Res> implements $DeliveryEventCopyWith<$Res> {
  factory _$CashToggledCopyWith(_CashToggled value, $Res Function(_CashToggled) _then) = __$CashToggledCopyWithImpl;
@useResult
$Res call({
 bool collected
});




}
/// @nodoc
class __$CashToggledCopyWithImpl<$Res>
    implements _$CashToggledCopyWith<$Res> {
  __$CashToggledCopyWithImpl(this._self, this._then);

  final _CashToggled _self;
  final $Res Function(_CashToggled) _then;

/// Create a copy of DeliveryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? collected = null,}) {
  return _then(_CashToggled(
null == collected ? _self.collected : collected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Confirmed implements DeliveryEvent {
  const _Confirmed(this.signature);
  

 final  String signature;

/// Create a copy of DeliveryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmedCopyWith<_Confirmed> get copyWith => __$ConfirmedCopyWithImpl<_Confirmed>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Confirmed&&(identical(other.signature, signature) || other.signature == signature));
}


@override
int get hashCode {
    return Object.hash(runtimeType,signature);
}

@override
String toString() {
    return 'DeliveryEvent.confirmed(signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$ConfirmedCopyWith<$Res> implements $DeliveryEventCopyWith<$Res> {
  factory _$ConfirmedCopyWith(_Confirmed value, $Res Function(_Confirmed) _then) = __$ConfirmedCopyWithImpl;
@useResult
$Res call({
 String signature
});




}
/// @nodoc
class __$ConfirmedCopyWithImpl<$Res>
    implements _$ConfirmedCopyWith<$Res> {
  __$ConfirmedCopyWithImpl(this._self, this._then);

  final _Confirmed _self;
  final $Res Function(_Confirmed) _then;

/// Create a copy of DeliveryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? signature = null,}) {
  return _then(_Confirmed(
null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeliveryState {

 String get id; LoadStatus get status; Order? get order; String? get message; bool get hasSignature; bool get cashCollected; LoadStatus get actionStatus; String? get actionMessage;
/// Create a copy of DeliveryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryStateCopyWith<DeliveryState> get copyWith => _$DeliveryStateCopyWithImpl<DeliveryState>(this as DeliveryState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DeliveryState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryState&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.order, _this.order) || other.order == _this.order)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.hasSignature, _this.hasSignature) || other.hasSignature == _this.hasSignature)&&(identical(other.cashCollected, _this.cashCollected) || other.cashCollected == _this.cashCollected)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.actionMessage, _this.actionMessage) || other.actionMessage == _this.actionMessage));
}


@override
int get hashCode {
  final _this = this as DeliveryState;
  return Object.hash(runtimeType,_this.id,_this.status,_this.order,_this.message,_this.hasSignature,_this.cashCollected,_this.actionStatus,_this.actionMessage);
}

@override
String toString() {
  final _this = this as DeliveryState;
  return 'DeliveryState(id: ${_this.id}, status: ${_this.status}, order: ${_this.order}, message: ${_this.message}, hasSignature: ${_this.hasSignature}, cashCollected: ${_this.cashCollected}, actionStatus: ${_this.actionStatus}, actionMessage: ${_this.actionMessage})';
}


}

/// @nodoc
abstract mixin class $DeliveryStateCopyWith<$Res>  {
  factory $DeliveryStateCopyWith(DeliveryState value, $Res Function(DeliveryState) _then) = _$DeliveryStateCopyWithImpl;
@useResult
$Res call({
 String id, LoadStatus status, Order? order, String? message, bool hasSignature, bool cashCollected, LoadStatus actionStatus, String? actionMessage
});


$OrderCopyWith<$Res>? get order;

}
/// @nodoc
class _$DeliveryStateCopyWithImpl<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  _$DeliveryStateCopyWithImpl(this._self, this._then);

  final DeliveryState _self;
  final $Res Function(DeliveryState) _then;

/// Create a copy of DeliveryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? hasSignature = null,Object? cashCollected = null,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(DeliveryState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,hasSignature: null == hasSignature ? _self.hasSignature : hasSignature // ignore: cast_nullable_to_non_nullable
as bool,cashCollected: null == cashCollected ? _self.cashCollected : cashCollected // ignore: cast_nullable_to_non_nullable
as bool,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DeliveryState
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


/// Adds pattern-matching-related methods to [DeliveryState].
extension DeliveryStatePatterns on DeliveryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryState value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryState value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  LoadStatus status,  Order? order,  String? message,  bool hasSignature,  bool cashCollected,  LoadStatus actionStatus,  String? actionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryState() when $default != null:
return $default(_that.id,_that.status,_that.order,_that.message,_that.hasSignature,_that.cashCollected,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  LoadStatus status,  Order? order,  String? message,  bool hasSignature,  bool cashCollected,  LoadStatus actionStatus,  String? actionMessage)  $default,) {final _that = this;
switch (_that) {
case _DeliveryState():
return $default(_that.id,_that.status,_that.order,_that.message,_that.hasSignature,_that.cashCollected,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  LoadStatus status,  Order? order,  String? message,  bool hasSignature,  bool cashCollected,  LoadStatus actionStatus,  String? actionMessage)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryState() when $default != null:
return $default(_that.id,_that.status,_that.order,_that.message,_that.hasSignature,_that.cashCollected,_that.actionStatus,_that.actionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryState extends DeliveryState {
  const _DeliveryState({this.id = '', this.status = LoadStatus.initial, this.order, this.message, this.hasSignature = false, this.cashCollected = false, this.actionStatus = LoadStatus.initial, this.actionMessage}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  LoadStatus status;
@override final  Order? order;
@override final  String? message;
@override@JsonKey() final  bool hasSignature;
@override@JsonKey() final  bool cashCollected;
@override@JsonKey() final  LoadStatus actionStatus;
@override final  String? actionMessage;

/// Create a copy of DeliveryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryStateCopyWith<_DeliveryState> get copyWith => __$DeliveryStateCopyWithImpl<_DeliveryState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryState&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.message, message) || other.message == message)&&(identical(other.hasSignature, hasSignature) || other.hasSignature == hasSignature)&&(identical(other.cashCollected, cashCollected) || other.cashCollected == cashCollected)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.actionMessage, actionMessage) || other.actionMessage == actionMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,status,order,message,hasSignature,cashCollected,actionStatus,actionMessage);
}

@override
String toString() {
    return 'DeliveryState(id: $id, status: $status, order: $order, message: $message, hasSignature: $hasSignature, cashCollected: $cashCollected, actionStatus: $actionStatus, actionMessage: $actionMessage)';
}


}

/// @nodoc
abstract mixin class _$DeliveryStateCopyWith<$Res> implements $DeliveryStateCopyWith<$Res> {
  factory _$DeliveryStateCopyWith(_DeliveryState value, $Res Function(_DeliveryState) _then) = __$DeliveryStateCopyWithImpl;
@override @useResult
$Res call({
 String id, LoadStatus status, Order? order, String? message, bool hasSignature, bool cashCollected, LoadStatus actionStatus, String? actionMessage
});


@override $OrderCopyWith<$Res>? get order;

}
/// @nodoc
class __$DeliveryStateCopyWithImpl<$Res>
    implements _$DeliveryStateCopyWith<$Res> {
  __$DeliveryStateCopyWithImpl(this._self, this._then);

  final _DeliveryState _self;
  final $Res Function(_DeliveryState) _then;

/// Create a copy of DeliveryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? hasSignature = null,Object? cashCollected = null,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(_DeliveryState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,hasSignature: null == hasSignature ? _self.hasSignature : hasSignature // ignore: cast_nullable_to_non_nullable
as bool,cashCollected: null == cashCollected ? _self.cashCollected : cashCollected // ignore: cast_nullable_to_non_nullable
as bool,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DeliveryState
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
