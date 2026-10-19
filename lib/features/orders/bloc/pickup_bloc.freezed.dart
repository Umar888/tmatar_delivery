// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PickupEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PickupEvent()';
}


}

/// @nodoc
class $PickupEventCopyWith<$Res>  {
$PickupEventCopyWith(PickupEvent _, $Res Function(PickupEvent) __);
}


/// Adds pattern-matching-related methods to [PickupEvent].
extension PickupEventPatterns on PickupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ItemToggled value)?  itemToggled,TResult Function( _Confirmed value)?  confirmed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ItemToggled() when itemToggled != null:
return itemToggled(_that);case _Confirmed() when confirmed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ItemToggled value)  itemToggled,required TResult Function( _Confirmed value)  confirmed,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ItemToggled():
return itemToggled(_that);case _Confirmed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ItemToggled value)?  itemToggled,TResult? Function( _Confirmed value)?  confirmed,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ItemToggled() when itemToggled != null:
return itemToggled(_that);case _Confirmed() when confirmed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  started,TResult Function( String itemId)?  itemToggled,TResult Function()?  confirmed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _ItemToggled() when itemToggled != null:
return itemToggled(_that.itemId);case _Confirmed() when confirmed != null:
return confirmed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  started,required TResult Function( String itemId)  itemToggled,required TResult Function()  confirmed,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.id);case _ItemToggled():
return itemToggled(_that.itemId);case _Confirmed():
return confirmed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  started,TResult? Function( String itemId)?  itemToggled,TResult? Function()?  confirmed,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.id);case _ItemToggled() when itemToggled != null:
return itemToggled(_that.itemId);case _Confirmed() when confirmed != null:
return confirmed();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements PickupEvent {
  const _Started(this.id);
  

 final  String id;

/// Create a copy of PickupEvent
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
    return 'PickupEvent.started(id: $id)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $PickupEventCopyWith<$Res> {
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

/// Create a copy of PickupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Started(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ItemToggled implements PickupEvent {
  const _ItemToggled(this.itemId);
  

 final  String itemId;

/// Create a copy of PickupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemToggledCopyWith<_ItemToggled> get copyWith => __$ItemToggledCopyWithImpl<_ItemToggled>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemToggled&&(identical(other.itemId, itemId) || other.itemId == itemId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,itemId);
}

@override
String toString() {
    return 'PickupEvent.itemToggled(itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$ItemToggledCopyWith<$Res> implements $PickupEventCopyWith<$Res> {
  factory _$ItemToggledCopyWith(_ItemToggled value, $Res Function(_ItemToggled) _then) = __$ItemToggledCopyWithImpl;
@useResult
$Res call({
 String itemId
});




}
/// @nodoc
class __$ItemToggledCopyWithImpl<$Res>
    implements _$ItemToggledCopyWith<$Res> {
  __$ItemToggledCopyWithImpl(this._self, this._then);

  final _ItemToggled _self;
  final $Res Function(_ItemToggled) _then;

/// Create a copy of PickupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,}) {
  return _then(_ItemToggled(
null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Confirmed implements PickupEvent {
  const _Confirmed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Confirmed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PickupEvent.confirmed()';
}


}




/// @nodoc
mixin _$PickupState {

 String get id; LoadStatus get status; Order? get order; String? get message; Set<String> get checkedIds; LoadStatus get actionStatus; String? get actionMessage;
/// Create a copy of PickupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupStateCopyWith<PickupState> get copyWith => _$PickupStateCopyWithImpl<PickupState>(this as PickupState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PickupState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupState&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.order, _this.order) || other.order == _this.order)&&(identical(other.message, _this.message) || other.message == _this.message)&&const DeepCollectionEquality().equals(other.checkedIds, _this.checkedIds)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.actionMessage, _this.actionMessage) || other.actionMessage == _this.actionMessage));
}


@override
int get hashCode {
  final _this = this as PickupState;
  return Object.hash(runtimeType,_this.id,_this.status,_this.order,_this.message,const DeepCollectionEquality().hash(_this.checkedIds),_this.actionStatus,_this.actionMessage);
}

@override
String toString() {
  final _this = this as PickupState;
  return 'PickupState(id: ${_this.id}, status: ${_this.status}, order: ${_this.order}, message: ${_this.message}, checkedIds: ${_this.checkedIds}, actionStatus: ${_this.actionStatus}, actionMessage: ${_this.actionMessage})';
}


}

/// @nodoc
abstract mixin class $PickupStateCopyWith<$Res>  {
  factory $PickupStateCopyWith(PickupState value, $Res Function(PickupState) _then) = _$PickupStateCopyWithImpl;
@useResult
$Res call({
 String id, LoadStatus status, Order? order, String? message, Set<String> checkedIds, LoadStatus actionStatus, String? actionMessage
});


$OrderCopyWith<$Res>? get order;

}
/// @nodoc
class _$PickupStateCopyWithImpl<$Res>
    implements $PickupStateCopyWith<$Res> {
  _$PickupStateCopyWithImpl(this._self, this._then);

  final PickupState _self;
  final $Res Function(PickupState) _then;

/// Create a copy of PickupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? checkedIds = null,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(PickupState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,checkedIds: null == checkedIds ? _self.checkedIds : checkedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PickupState
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


/// Adds pattern-matching-related methods to [PickupState].
extension PickupStatePatterns on PickupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupState value)  $default,){
final _that = this;
switch (_that) {
case _PickupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupState value)?  $default,){
final _that = this;
switch (_that) {
case _PickupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  LoadStatus status,  Order? order,  String? message,  Set<String> checkedIds,  LoadStatus actionStatus,  String? actionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupState() when $default != null:
return $default(_that.id,_that.status,_that.order,_that.message,_that.checkedIds,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  LoadStatus status,  Order? order,  String? message,  Set<String> checkedIds,  LoadStatus actionStatus,  String? actionMessage)  $default,) {final _that = this;
switch (_that) {
case _PickupState():
return $default(_that.id,_that.status,_that.order,_that.message,_that.checkedIds,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  LoadStatus status,  Order? order,  String? message,  Set<String> checkedIds,  LoadStatus actionStatus,  String? actionMessage)?  $default,) {final _that = this;
switch (_that) {
case _PickupState() when $default != null:
return $default(_that.id,_that.status,_that.order,_that.message,_that.checkedIds,_that.actionStatus,_that.actionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _PickupState extends PickupState {
  const _PickupState({this.id = '', this.status = LoadStatus.initial, this.order, this.message,  Set<String> checkedIds = const {}, this.actionStatus = LoadStatus.initial, this.actionMessage}): _checkedIds = checkedIds,super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  LoadStatus status;
@override final  Order? order;
@override final  String? message;
 final  Set<String> _checkedIds;
@override@JsonKey() Set<String> get checkedIds {
  if (_checkedIds is EqualUnmodifiableSetView) return _checkedIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_checkedIds);
}

@override@JsonKey() final  LoadStatus actionStatus;
@override final  String? actionMessage;

/// Create a copy of PickupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupStateCopyWith<_PickupState> get copyWith => __$PickupStateCopyWithImpl<_PickupState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupState&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.checkedIds, _checkedIds)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.actionMessage, actionMessage) || other.actionMessage == actionMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,status,order,message,const DeepCollectionEquality().hash(_checkedIds),actionStatus,actionMessage);
}

@override
String toString() {
    return 'PickupState(id: $id, status: $status, order: $order, message: $message, checkedIds: $checkedIds, actionStatus: $actionStatus, actionMessage: $actionMessage)';
}


}

/// @nodoc
abstract mixin class _$PickupStateCopyWith<$Res> implements $PickupStateCopyWith<$Res> {
  factory _$PickupStateCopyWith(_PickupState value, $Res Function(_PickupState) _then) = __$PickupStateCopyWithImpl;
@override @useResult
$Res call({
 String id, LoadStatus status, Order? order, String? message, Set<String> checkedIds, LoadStatus actionStatus, String? actionMessage
});


@override $OrderCopyWith<$Res>? get order;

}
/// @nodoc
class __$PickupStateCopyWithImpl<$Res>
    implements _$PickupStateCopyWith<$Res> {
  __$PickupStateCopyWithImpl(this._self, this._then);

  final _PickupState _self;
  final $Res Function(_PickupState) _then;

/// Create a copy of PickupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? order = freezed,Object? message = freezed,Object? checkedIds = null,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(_PickupState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,checkedIds: null == checkedIds ? _self._checkedIds : checkedIds // ignore: cast_nullable_to_non_nullable
as Set<String>,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PickupState
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
