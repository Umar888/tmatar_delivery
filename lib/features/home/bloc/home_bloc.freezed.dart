// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refreshed value)?  refreshed,TResult Function( _OnlineToggled value)?  onlineToggled,TResult Function( _ProfileUpdated value)?  profileUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _OnlineToggled() when onlineToggled != null:
return onlineToggled(_that);case _ProfileUpdated() when profileUpdated != null:
return profileUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refreshed value)  refreshed,required TResult Function( _OnlineToggled value)  onlineToggled,required TResult Function( _ProfileUpdated value)  profileUpdated,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refreshed():
return refreshed(_that);case _OnlineToggled():
return onlineToggled(_that);case _ProfileUpdated():
return profileUpdated(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refreshed value)?  refreshed,TResult? Function( _OnlineToggled value)?  onlineToggled,TResult? Function( _ProfileUpdated value)?  profileUpdated,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _OnlineToggled() when onlineToggled != null:
return onlineToggled(_that);case _ProfileUpdated() when profileUpdated != null:
return profileUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function( bool online)?  onlineToggled,TResult Function( PartnerProfile profile)?  profileUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _OnlineToggled() when onlineToggled != null:
return onlineToggled(_that.online);case _ProfileUpdated() when profileUpdated != null:
return profileUpdated(_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function( bool online)  onlineToggled,required TResult Function( PartnerProfile profile)  profileUpdated,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Refreshed():
return refreshed();case _OnlineToggled():
return onlineToggled(_that.online);case _ProfileUpdated():
return profileUpdated(_that.profile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function( bool online)?  onlineToggled,TResult? Function( PartnerProfile profile)?  profileUpdated,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _OnlineToggled() when onlineToggled != null:
return onlineToggled(_that.online);case _ProfileUpdated() when profileUpdated != null:
return profileUpdated(_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomeEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.started()';
}


}




/// @nodoc


class _Refreshed implements HomeEvent {
  const _Refreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.refreshed()';
}


}




/// @nodoc


class _OnlineToggled implements HomeEvent {
  const _OnlineToggled(this.online);
  

 final  bool online;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnlineToggledCopyWith<_OnlineToggled> get copyWith => __$OnlineToggledCopyWithImpl<_OnlineToggled>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnlineToggled&&(identical(other.online, online) || other.online == online));
}


@override
int get hashCode {
    return Object.hash(runtimeType,online);
}

@override
String toString() {
    return 'HomeEvent.onlineToggled(online: $online)';
}


}

/// @nodoc
abstract mixin class _$OnlineToggledCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$OnlineToggledCopyWith(_OnlineToggled value, $Res Function(_OnlineToggled) _then) = __$OnlineToggledCopyWithImpl;
@useResult
$Res call({
 bool online
});




}
/// @nodoc
class __$OnlineToggledCopyWithImpl<$Res>
    implements _$OnlineToggledCopyWith<$Res> {
  __$OnlineToggledCopyWithImpl(this._self, this._then);

  final _OnlineToggled _self;
  final $Res Function(_OnlineToggled) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? online = null,}) {
  return _then(_OnlineToggled(
null == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ProfileUpdated implements HomeEvent {
  const _ProfileUpdated(this.profile);
  

 final  PartnerProfile profile;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileUpdatedCopyWith<_ProfileUpdated> get copyWith => __$ProfileUpdatedCopyWithImpl<_ProfileUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileUpdated&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode {
    return Object.hash(runtimeType,profile);
}

@override
String toString() {
    return 'HomeEvent.profileUpdated(profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$ProfileUpdatedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$ProfileUpdatedCopyWith(_ProfileUpdated value, $Res Function(_ProfileUpdated) _then) = __$ProfileUpdatedCopyWithImpl;
@useResult
$Res call({
 PartnerProfile profile
});


$PartnerProfileCopyWith<$Res> get profile;

}
/// @nodoc
class __$ProfileUpdatedCopyWithImpl<$Res>
    implements _$ProfileUpdatedCopyWith<$Res> {
  __$ProfileUpdatedCopyWithImpl(this._self, this._then);

  final _ProfileUpdated _self;
  final $Res Function(_ProfileUpdated) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(_ProfileUpdated(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as PartnerProfile,
  ));
}

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PartnerProfileCopyWith<$Res> get profile {
  
  return $PartnerProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc
mixin _$HomeState {

 LoadStatus get status; bool get refreshing; PartnerProfile? get profile; List<Order> get newOrders; List<Order> get inProgress; EarningsSummary? get today; String? get message; LoadStatus get toggleStatus; String? get toggleMessage;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HomeState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.refreshing, _this.refreshing) || other.refreshing == _this.refreshing)&&(identical(other.profile, _this.profile) || other.profile == _this.profile)&&const DeepCollectionEquality().equals(other.newOrders, _this.newOrders)&&const DeepCollectionEquality().equals(other.inProgress, _this.inProgress)&&(identical(other.today, _this.today) || other.today == _this.today)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.toggleStatus, _this.toggleStatus) || other.toggleStatus == _this.toggleStatus)&&(identical(other.toggleMessage, _this.toggleMessage) || other.toggleMessage == _this.toggleMessage));
}


@override
int get hashCode {
  final _this = this as HomeState;
  return Object.hash(runtimeType,_this.status,_this.refreshing,_this.profile,const DeepCollectionEquality().hash(_this.newOrders),const DeepCollectionEquality().hash(_this.inProgress),_this.today,_this.message,_this.toggleStatus,_this.toggleMessage);
}

@override
String toString() {
  final _this = this as HomeState;
  return 'HomeState(status: ${_this.status}, refreshing: ${_this.refreshing}, profile: ${_this.profile}, newOrders: ${_this.newOrders}, inProgress: ${_this.inProgress}, today: ${_this.today}, message: ${_this.message}, toggleStatus: ${_this.toggleStatus}, toggleMessage: ${_this.toggleMessage})';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 LoadStatus status, bool refreshing, PartnerProfile? profile, List<Order> newOrders, List<Order> inProgress, EarningsSummary? today, String? message, LoadStatus toggleStatus, String? toggleMessage
});


$PartnerProfileCopyWith<$Res>? get profile;$EarningsSummaryCopyWith<$Res>? get today;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? refreshing = null,Object? profile = freezed,Object? newOrders = null,Object? inProgress = null,Object? today = freezed,Object? message = freezed,Object? toggleStatus = null,Object? toggleMessage = freezed,}) {
  return _then(HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,refreshing: null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as PartnerProfile?,newOrders: null == newOrders ? _self.newOrders : newOrders // ignore: cast_nullable_to_non_nullable
as List<Order>,inProgress: null == inProgress ? _self.inProgress : inProgress // ignore: cast_nullable_to_non_nullable
as List<Order>,today: freezed == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as EarningsSummary?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,toggleStatus: null == toggleStatus ? _self.toggleStatus : toggleStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,toggleMessage: freezed == toggleMessage ? _self.toggleMessage : toggleMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PartnerProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $PartnerProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsSummaryCopyWith<$Res>? get today {
    if (_self.today == null) {
    return null;
  }

  return $EarningsSummaryCopyWith<$Res>(_self.today!, (value) {
    return _then(_self.copyWith(today: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoadStatus status,  bool refreshing,  PartnerProfile? profile,  List<Order> newOrders,  List<Order> inProgress,  EarningsSummary? today,  String? message,  LoadStatus toggleStatus,  String? toggleMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.refreshing,_that.profile,_that.newOrders,_that.inProgress,_that.today,_that.message,_that.toggleStatus,_that.toggleMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoadStatus status,  bool refreshing,  PartnerProfile? profile,  List<Order> newOrders,  List<Order> inProgress,  EarningsSummary? today,  String? message,  LoadStatus toggleStatus,  String? toggleMessage)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.status,_that.refreshing,_that.profile,_that.newOrders,_that.inProgress,_that.today,_that.message,_that.toggleStatus,_that.toggleMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoadStatus status,  bool refreshing,  PartnerProfile? profile,  List<Order> newOrders,  List<Order> inProgress,  EarningsSummary? today,  String? message,  LoadStatus toggleStatus,  String? toggleMessage)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.refreshing,_that.profile,_that.newOrders,_that.inProgress,_that.today,_that.message,_that.toggleStatus,_that.toggleMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({this.status = LoadStatus.initial, this.refreshing = false, this.profile,  List<Order> newOrders = const [],  List<Order> inProgress = const [], this.today, this.message, this.toggleStatus = LoadStatus.initial, this.toggleMessage}): _newOrders = newOrders,_inProgress = inProgress,super._();
  

@override@JsonKey() final  LoadStatus status;
@override@JsonKey() final  bool refreshing;
@override final  PartnerProfile? profile;
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

@override final  EarningsSummary? today;
@override final  String? message;
@override@JsonKey() final  LoadStatus toggleStatus;
@override final  String? toggleMessage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&(identical(other.refreshing, refreshing) || other.refreshing == refreshing)&&(identical(other.profile, profile) || other.profile == profile)&&const DeepCollectionEquality().equals(other.newOrders, _newOrders)&&const DeepCollectionEquality().equals(other.inProgress, _inProgress)&&(identical(other.today, today) || other.today == today)&&(identical(other.message, message) || other.message == message)&&(identical(other.toggleStatus, toggleStatus) || other.toggleStatus == toggleStatus)&&(identical(other.toggleMessage, toggleMessage) || other.toggleMessage == toggleMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,refreshing,profile,const DeepCollectionEquality().hash(_newOrders),const DeepCollectionEquality().hash(_inProgress),today,message,toggleStatus,toggleMessage);
}

@override
String toString() {
    return 'HomeState(status: $status, refreshing: $refreshing, profile: $profile, newOrders: $newOrders, inProgress: $inProgress, today: $today, message: $message, toggleStatus: $toggleStatus, toggleMessage: $toggleMessage)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 LoadStatus status, bool refreshing, PartnerProfile? profile, List<Order> newOrders, List<Order> inProgress, EarningsSummary? today, String? message, LoadStatus toggleStatus, String? toggleMessage
});


@override $PartnerProfileCopyWith<$Res>? get profile;@override $EarningsSummaryCopyWith<$Res>? get today;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? refreshing = null,Object? profile = freezed,Object? newOrders = null,Object? inProgress = null,Object? today = freezed,Object? message = freezed,Object? toggleStatus = null,Object? toggleMessage = freezed,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,refreshing: null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as PartnerProfile?,newOrders: null == newOrders ? _self._newOrders : newOrders // ignore: cast_nullable_to_non_nullable
as List<Order>,inProgress: null == inProgress ? _self._inProgress : inProgress // ignore: cast_nullable_to_non_nullable
as List<Order>,today: freezed == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as EarningsSummary?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,toggleStatus: null == toggleStatus ? _self.toggleStatus : toggleStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,toggleMessage: freezed == toggleMessage ? _self.toggleMessage : toggleMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PartnerProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $PartnerProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsSummaryCopyWith<$Res>? get today {
    if (_self.today == null) {
    return null;
  }

  return $EarningsSummaryCopyWith<$Res>(_self.today!, (value) {
    return _then(_self.copyWith(today: value));
  });
}
}

// dart format on
