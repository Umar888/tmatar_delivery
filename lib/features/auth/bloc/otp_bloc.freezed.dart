// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpEvent()';
}


}

/// @nodoc
class $OtpEventCopyWith<$Res>  {
$OtpEventCopyWith(OtpEvent _, $Res Function(OtpEvent) __);
}


/// Adds pattern-matching-related methods to [OtpEvent].
extension OtpEventPatterns on OtpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Ticked value)?  ticked,TResult Function( _OtpChanged value)?  otpChanged,TResult Function( _Submitted value)?  submitted,TResult Function( _ResendRequested value)?  resendRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Ticked() when ticked != null:
return ticked(_that);case _OtpChanged() when otpChanged != null:
return otpChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _ResendRequested() when resendRequested != null:
return resendRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Ticked value)  ticked,required TResult Function( _OtpChanged value)  otpChanged,required TResult Function( _Submitted value)  submitted,required TResult Function( _ResendRequested value)  resendRequested,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Ticked():
return ticked(_that);case _OtpChanged():
return otpChanged(_that);case _Submitted():
return submitted(_that);case _ResendRequested():
return resendRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Ticked value)?  ticked,TResult? Function( _OtpChanged value)?  otpChanged,TResult? Function( _Submitted value)?  submitted,TResult? Function( _ResendRequested value)?  resendRequested,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Ticked() when ticked != null:
return ticked(_that);case _OtpChanged() when otpChanged != null:
return otpChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _ResendRequested() when resendRequested != null:
return resendRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int secondsLeft)?  ticked,TResult Function( String otp)?  otpChanged,TResult Function()?  submitted,TResult Function()?  resendRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Ticked() when ticked != null:
return ticked(_that.secondsLeft);case _OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case _Submitted() when submitted != null:
return submitted();case _ResendRequested() when resendRequested != null:
return resendRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int secondsLeft)  ticked,required TResult Function( String otp)  otpChanged,required TResult Function()  submitted,required TResult Function()  resendRequested,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Ticked():
return ticked(_that.secondsLeft);case _OtpChanged():
return otpChanged(_that.otp);case _Submitted():
return submitted();case _ResendRequested():
return resendRequested();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int secondsLeft)?  ticked,TResult? Function( String otp)?  otpChanged,TResult? Function()?  submitted,TResult? Function()?  resendRequested,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Ticked() when ticked != null:
return ticked(_that.secondsLeft);case _OtpChanged() when otpChanged != null:
return otpChanged(_that.otp);case _Submitted() when submitted != null:
return submitted();case _ResendRequested() when resendRequested != null:
return resendRequested();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OtpEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpEvent.started()';
}


}




/// @nodoc


class _Ticked implements OtpEvent {
  const _Ticked(this.secondsLeft);
  

 final  int secondsLeft;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TickedCopyWith<_Ticked> get copyWith => __$TickedCopyWithImpl<_Ticked>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ticked&&(identical(other.secondsLeft, secondsLeft) || other.secondsLeft == secondsLeft));
}


@override
int get hashCode {
    return Object.hash(runtimeType,secondsLeft);
}

@override
String toString() {
    return 'OtpEvent.ticked(secondsLeft: $secondsLeft)';
}


}

/// @nodoc
abstract mixin class _$TickedCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$TickedCopyWith(_Ticked value, $Res Function(_Ticked) _then) = __$TickedCopyWithImpl;
@useResult
$Res call({
 int secondsLeft
});




}
/// @nodoc
class __$TickedCopyWithImpl<$Res>
    implements _$TickedCopyWith<$Res> {
  __$TickedCopyWithImpl(this._self, this._then);

  final _Ticked _self;
  final $Res Function(_Ticked) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? secondsLeft = null,}) {
  return _then(_Ticked(
null == secondsLeft ? _self.secondsLeft : secondsLeft // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OtpChanged implements OtpEvent {
  const _OtpChanged(this.otp);
  

 final  String otp;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpChangedCopyWith<_OtpChanged> get copyWith => __$OtpChangedCopyWithImpl<_OtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpChanged&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode {
    return Object.hash(runtimeType,otp);
}

@override
String toString() {
    return 'OtpEvent.otpChanged(otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$OtpChangedCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$OtpChangedCopyWith(_OtpChanged value, $Res Function(_OtpChanged) _then) = __$OtpChangedCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class __$OtpChangedCopyWithImpl<$Res>
    implements _$OtpChangedCopyWith<$Res> {
  __$OtpChangedCopyWithImpl(this._self, this._then);

  final _OtpChanged _self;
  final $Res Function(_OtpChanged) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(_OtpChanged(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submitted implements OtpEvent {
  const _Submitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpEvent.submitted()';
}


}




/// @nodoc


class _ResendRequested implements OtpEvent {
  const _ResendRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpEvent.resendRequested()';
}


}




/// @nodoc
mixin _$OtpState {

 String get phone; String get otp; LoadStatus get status; String? get message; int get resendIn; bool get resending; String? get notice;
/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpStateCopyWith<OtpState> get copyWith => _$OtpStateCopyWithImpl<OtpState>(this as OtpState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OtpState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpState&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.otp, _this.otp) || other.otp == _this.otp)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.resendIn, _this.resendIn) || other.resendIn == _this.resendIn)&&(identical(other.resending, _this.resending) || other.resending == _this.resending)&&(identical(other.notice, _this.notice) || other.notice == _this.notice));
}


@override
int get hashCode {
  final _this = this as OtpState;
  return Object.hash(runtimeType,_this.phone,_this.otp,_this.status,_this.message,_this.resendIn,_this.resending,_this.notice);
}

@override
String toString() {
  final _this = this as OtpState;
  return 'OtpState(phone: ${_this.phone}, otp: ${_this.otp}, status: ${_this.status}, message: ${_this.message}, resendIn: ${_this.resendIn}, resending: ${_this.resending}, notice: ${_this.notice})';
}


}

/// @nodoc
abstract mixin class $OtpStateCopyWith<$Res>  {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) _then) = _$OtpStateCopyWithImpl;
@useResult
$Res call({
 String phone, String otp, LoadStatus status, String? message, int resendIn, bool resending, String? notice
});




}
/// @nodoc
class _$OtpStateCopyWithImpl<$Res>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._self, this._then);

  final OtpState _self;
  final $Res Function(OtpState) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? otp = null,Object? status = null,Object? message = freezed,Object? resendIn = null,Object? resending = null,Object? notice = freezed,}) {
  return _then(OtpState(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,resendIn: null == resendIn ? _self.resendIn : resendIn // ignore: cast_nullable_to_non_nullable
as int,resending: null == resending ? _self.resending : resending // ignore: cast_nullable_to_non_nullable
as bool,notice: freezed == notice ? _self.notice : notice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpState].
extension OtpStatePatterns on OtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpState value)  $default,){
final _that = this;
switch (_that) {
case _OtpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpState value)?  $default,){
final _that = this;
switch (_that) {
case _OtpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  String otp,  LoadStatus status,  String? message,  int resendIn,  bool resending,  String? notice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpState() when $default != null:
return $default(_that.phone,_that.otp,_that.status,_that.message,_that.resendIn,_that.resending,_that.notice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  String otp,  LoadStatus status,  String? message,  int resendIn,  bool resending,  String? notice)  $default,) {final _that = this;
switch (_that) {
case _OtpState():
return $default(_that.phone,_that.otp,_that.status,_that.message,_that.resendIn,_that.resending,_that.notice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  String otp,  LoadStatus status,  String? message,  int resendIn,  bool resending,  String? notice)?  $default,) {final _that = this;
switch (_that) {
case _OtpState() when $default != null:
return $default(_that.phone,_that.otp,_that.status,_that.message,_that.resendIn,_that.resending,_that.notice);case _:
  return null;

}
}

}

/// @nodoc


class _OtpState implements OtpState {
  const _OtpState({required this.phone, this.otp = '', this.status = LoadStatus.initial, this.message, this.resendIn = 0, this.resending = false, this.notice});
  

@override final  String phone;
@override@JsonKey() final  String otp;
@override@JsonKey() final  LoadStatus status;
@override final  String? message;
@override@JsonKey() final  int resendIn;
@override@JsonKey() final  bool resending;
@override final  String? notice;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpStateCopyWith<_OtpState> get copyWith => __$OtpStateCopyWithImpl<_OtpState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpState&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.resendIn, resendIn) || other.resendIn == resendIn)&&(identical(other.resending, resending) || other.resending == resending)&&(identical(other.notice, notice) || other.notice == notice));
}


@override
int get hashCode {
    return Object.hash(runtimeType,phone,otp,status,message,resendIn,resending,notice);
}

@override
String toString() {
    return 'OtpState(phone: $phone, otp: $otp, status: $status, message: $message, resendIn: $resendIn, resending: $resending, notice: $notice)';
}


}

/// @nodoc
abstract mixin class _$OtpStateCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory _$OtpStateCopyWith(_OtpState value, $Res Function(_OtpState) _then) = __$OtpStateCopyWithImpl;
@override @useResult
$Res call({
 String phone, String otp, LoadStatus status, String? message, int resendIn, bool resending, String? notice
});




}
/// @nodoc
class __$OtpStateCopyWithImpl<$Res>
    implements _$OtpStateCopyWith<$Res> {
  __$OtpStateCopyWithImpl(this._self, this._then);

  final _OtpState _self;
  final $Res Function(_OtpState) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? otp = null,Object? status = null,Object? message = freezed,Object? resendIn = null,Object? resending = null,Object? notice = freezed,}) {
  return _then(_OtpState(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,resendIn: null == resendIn ? _self.resendIn : resendIn // ignore: cast_nullable_to_non_nullable
as int,resending: null == resending ? _self.resending : resending // ignore: cast_nullable_to_non_nullable
as bool,notice: freezed == notice ? _self.notice : notice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
