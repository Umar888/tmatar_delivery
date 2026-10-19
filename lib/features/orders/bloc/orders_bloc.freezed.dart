// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent()';
}


}

/// @nodoc
class $OrdersEventCopyWith<$Res>  {
$OrdersEventCopyWith(OrdersEvent _, $Res Function(OrdersEvent) __);
}


/// Adds pattern-matching-related methods to [OrdersEvent].
extension OrdersEventPatterns on OrdersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refreshed value)?  refreshed,TResult Function( _TabChanged value)?  tabChanged,TResult Function( _AcceptRequested value)?  acceptRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _TabChanged() when tabChanged != null:
return tabChanged(_that);case _AcceptRequested() when acceptRequested != null:
return acceptRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refreshed value)  refreshed,required TResult Function( _TabChanged value)  tabChanged,required TResult Function( _AcceptRequested value)  acceptRequested,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refreshed():
return refreshed(_that);case _TabChanged():
return tabChanged(_that);case _AcceptRequested():
return acceptRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refreshed value)?  refreshed,TResult? Function( _TabChanged value)?  tabChanged,TResult? Function( _AcceptRequested value)?  acceptRequested,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _TabChanged() when tabChanged != null:
return tabChanged(_that);case _AcceptRequested() when acceptRequested != null:
return acceptRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function( int tab)?  tabChanged,TResult Function( String id)?  acceptRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case _AcceptRequested() when acceptRequested != null:
return acceptRequested(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function( int tab)  tabChanged,required TResult Function( String id)  acceptRequested,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Refreshed():
return refreshed();case _TabChanged():
return tabChanged(_that.tab);case _AcceptRequested():
return acceptRequested(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function( int tab)?  tabChanged,TResult? Function( String id)?  acceptRequested,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case _AcceptRequested() when acceptRequested != null:
return acceptRequested(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OrdersEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent.started()';
}


}




/// @nodoc


class _Refreshed implements OrdersEvent {
  const _Refreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent.refreshed()';
}


}




/// @nodoc


class _TabChanged implements OrdersEvent {
  const _TabChanged(this.tab);
  

 final  int tab;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabChangedCopyWith<_TabChanged> get copyWith => __$TabChangedCopyWithImpl<_TabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabChanged&&(identical(other.tab, tab) || other.tab == tab));
}


@override
int get hashCode {
    return Object.hash(runtimeType,tab);
}

@override
String toString() {
    return 'OrdersEvent.tabChanged(tab: $tab)';
}


}

/// @nodoc
abstract mixin class _$TabChangedCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$TabChangedCopyWith(_TabChanged value, $Res Function(_TabChanged) _then) = __$TabChangedCopyWithImpl;
@useResult
$Res call({
 int tab
});




}
/// @nodoc
class __$TabChangedCopyWithImpl<$Res>
    implements _$TabChangedCopyWith<$Res> {
  __$TabChangedCopyWithImpl(this._self, this._then);

  final _TabChanged _self;
  final $Res Function(_TabChanged) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,}) {
  return _then(_TabChanged(
null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AcceptRequested implements OrdersEvent {
  const _AcceptRequested(this.id);
  

 final  String id;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptRequestedCopyWith<_AcceptRequested> get copyWith => __$AcceptRequestedCopyWithImpl<_AcceptRequested>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptRequested&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'OrdersEvent.acceptRequested(id: $id)';
}


}

/// @nodoc
abstract mixin class _$AcceptRequestedCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$AcceptRequestedCopyWith(_AcceptRequested value, $Res Function(_AcceptRequested) _then) = __$AcceptRequestedCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$AcceptRequestedCopyWithImpl<$Res>
    implements _$AcceptRequestedCopyWith<$Res> {
  __$AcceptRequestedCopyWithImpl(this._self, this._then);

  final _AcceptRequested _self;
  final $Res Function(_AcceptRequested) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_AcceptRequested(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OrdersState {

 LoadStatus get status; bool get refreshing; int get tab; List<Order> get newOrders; List<Order> get inProgress; List<Order> get completed; String? get message; String? get acceptingId; LoadStatus get actionStatus; String? get actionMessage;
/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersStateCopyWith<OrdersState> get copyWith => _$OrdersStateCopyWithImpl<OrdersState>(this as OrdersState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrdersState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.refreshing, _this.refreshing) || other.refreshing == _this.refreshing)&&(identical(other.tab, _this.tab) || other.tab == _this.tab)&&const DeepCollectionEquality().equals(other.newOrders, _this.newOrders)&&const DeepCollectionEquality().equals(other.inProgress, _this.inProgress)&&const DeepCollectionEquality().equals(other.completed, _this.completed)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.acceptingId, _this.acceptingId) || other.acceptingId == _this.acceptingId)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.actionMessage, _this.actionMessage) || other.actionMessage == _this.actionMessage));
}


@override
int get hashCode {
  final _this = this as OrdersState;
  return Object.hash(runtimeType,_this.status,_this.refreshing,_this.tab,const DeepCollectionEquality().hash(_this.newOrders),const DeepCollectionEquality().hash(_this.inProgress),const DeepCollectionEquality().hash(_this.completed),_this.message,_this.acceptingId,_this.actionStatus,_this.actionMessage);
}

@override
String toString() {
  final _this = this as OrdersState;
  return 'OrdersState(status: ${_this.status}, refreshing: ${_this.refreshing}, tab: ${_this.tab}, newOrders: ${_this.newOrders}, inProgress: ${_this.inProgress}, completed: ${_this.completed}, message: ${_this.message}, acceptingId: ${_this.acceptingId}, actionStatus: ${_this.actionStatus}, actionMessage: ${_this.actionMessage})';
}


}

/// @nodoc
abstract mixin class $OrdersStateCopyWith<$Res>  {
  factory $OrdersStateCopyWith(OrdersState value, $Res Function(OrdersState) _then) = _$OrdersStateCopyWithImpl;
@useResult
$Res call({
 LoadStatus status, bool refreshing, int tab, List<Order> newOrders, List<Order> inProgress, List<Order> completed, String? message, String? acceptingId, LoadStatus actionStatus, String? actionMessage
});




}
/// @nodoc
class _$OrdersStateCopyWithImpl<$Res>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._self, this._then);

  final OrdersState _self;
  final $Res Function(OrdersState) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? refreshing = null,Object? tab = null,Object? newOrders = null,Object? inProgress = null,Object? completed = null,Object? message = freezed,Object? acceptingId = freezed,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(OrdersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,refreshing: null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as int,newOrders: null == newOrders ? _self.newOrders : newOrders // ignore: cast_nullable_to_non_nullable
as List<Order>,inProgress: null == inProgress ? _self.inProgress : inProgress // ignore: cast_nullable_to_non_nullable
as List<Order>,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as List<Order>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,acceptingId: freezed == acceptingId ? _self.acceptingId : acceptingId // ignore: cast_nullable_to_non_nullable
as String?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersState value)  $default,){
final _that = this;
switch (_that) {
case _OrdersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersState value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoadStatus status,  bool refreshing,  int tab,  List<Order> newOrders,  List<Order> inProgress,  List<Order> completed,  String? message,  String? acceptingId,  LoadStatus actionStatus,  String? actionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
return $default(_that.status,_that.refreshing,_that.tab,_that.newOrders,_that.inProgress,_that.completed,_that.message,_that.acceptingId,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoadStatus status,  bool refreshing,  int tab,  List<Order> newOrders,  List<Order> inProgress,  List<Order> completed,  String? message,  String? acceptingId,  LoadStatus actionStatus,  String? actionMessage)  $default,) {final _that = this;
switch (_that) {
case _OrdersState():
return $default(_that.status,_that.refreshing,_that.tab,_that.newOrders,_that.inProgress,_that.completed,_that.message,_that.acceptingId,_that.actionStatus,_that.actionMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoadStatus status,  bool refreshing,  int tab,  List<Order> newOrders,  List<Order> inProgress,  List<Order> completed,  String? message,  String? acceptingId,  LoadStatus actionStatus,  String? actionMessage)?  $default,) {final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
return $default(_that.status,_that.refreshing,_that.tab,_that.newOrders,_that.inProgress,_that.completed,_that.message,_that.acceptingId,_that.actionStatus,_that.actionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersState extends OrdersState {
  const _OrdersState({this.status = LoadStatus.initial, this.refreshing = false, this.tab = 0,  List<Order> newOrders = const [],  List<Order> inProgress = const [],  List<Order> completed = const [], this.message, this.acceptingId, this.actionStatus = LoadStatus.initial, this.actionMessage}): _newOrders = newOrders,_inProgress = inProgress,_completed = completed,super._();
  

@override@JsonKey() final  LoadStatus status;
@override@JsonKey() final  bool refreshing;
@override@JsonKey() final  int tab;
 final  List<Order> _newOrders;
@override@JsonKey() List<Order> get newOrders {
  if (_newOrders is EqualUnmodifiableListView) return _newOrders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_newOrders);
}

 final  List<Order> _inProgress;
@override@JsonKey() List<Order> get inProgress {
  if (_inProgress is EqualUnmodifiableListView) return _inProgress;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inProgress);
}

 final  List<Order> _completed;
@override@JsonKey() List<Order> get completed {
  if (_completed is EqualUnmodifiableListView) return _completed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completed);
}

@override final  String? message;
@override final  String? acceptingId;
@override@JsonKey() final  LoadStatus actionStatus;
@override final  String? actionMessage;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersStateCopyWith<_OrdersState> get copyWith => __$OrdersStateCopyWithImpl<_OrdersState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersState&&(identical(other.status, status) || other.status == status)&&(identical(other.refreshing, refreshing) || other.refreshing == refreshing)&&(identical(other.tab, tab) || other.tab == tab)&&const DeepCollectionEquality().equals(other.newOrders, _newOrders)&&const DeepCollectionEquality().equals(other.inProgress, _inProgress)&&const DeepCollectionEquality().equals(other.completed, _completed)&&(identical(other.message, message) || other.message == message)&&(identical(other.acceptingId, acceptingId) || other.acceptingId == acceptingId)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.actionMessage, actionMessage) || other.actionMessage == actionMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,refreshing,tab,const DeepCollectionEquality().hash(_newOrders),const DeepCollectionEquality().hash(_inProgress),const DeepCollectionEquality().hash(_completed),message,acceptingId,actionStatus,actionMessage);
}

@override
String toString() {
    return 'OrdersState(status: $status, refreshing: $refreshing, tab: $tab, newOrders: $newOrders, inProgress: $inProgress, completed: $completed, message: $message, acceptingId: $acceptingId, actionStatus: $actionStatus, actionMessage: $actionMessage)';
}


}

/// @nodoc
abstract mixin class _$OrdersStateCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersStateCopyWith(_OrdersState value, $Res Function(_OrdersState) _then) = __$OrdersStateCopyWithImpl;
@override @useResult
$Res call({
 LoadStatus status, bool refreshing, int tab, List<Order> newOrders, List<Order> inProgress, List<Order> completed, String? message, String? acceptingId, LoadStatus actionStatus, String? actionMessage
});




}
/// @nodoc
class __$OrdersStateCopyWithImpl<$Res>
    implements _$OrdersStateCopyWith<$Res> {
  __$OrdersStateCopyWithImpl(this._self, this._then);

  final _OrdersState _self;
  final $Res Function(_OrdersState) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? refreshing = null,Object? tab = null,Object? newOrders = null,Object? inProgress = null,Object? completed = null,Object? message = freezed,Object? acceptingId = freezed,Object? actionStatus = null,Object? actionMessage = freezed,}) {
  return _then(_OrdersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,refreshing: null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as int,newOrders: null == newOrders ? _self._newOrders : newOrders // ignore: cast_nullable_to_non_nullable
as List<Order>,inProgress: null == inProgress ? _self._inProgress : inProgress // ignore: cast_nullable_to_non_nullable
as List<Order>,completed: null == completed ? _self._completed : completed // ignore: cast_nullable_to_non_nullable
as List<Order>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,acceptingId: freezed == acceptingId ? _self.acceptingId : acceptingId // ignore: cast_nullable_to_non_nullable
as String?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,actionMessage: freezed == actionMessage ? _self.actionMessage : actionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
