// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EarningsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'EarningsEvent()';
}


}

/// @nodoc
class $EarningsEventCopyWith<$Res>  {
$EarningsEventCopyWith(EarningsEvent _, $Res Function(EarningsEvent) __);
}


/// Adds pattern-matching-related methods to [EarningsEvent].
extension EarningsEventPatterns on EarningsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Refreshed value)?  refreshed,TResult Function( _PeriodChanged value)?  periodChanged,TResult Function( _Shifted value)?  shifted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _PeriodChanged() when periodChanged != null:
return periodChanged(_that);case _Shifted() when shifted != null:
return shifted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Refreshed value)  refreshed,required TResult Function( _PeriodChanged value)  periodChanged,required TResult Function( _Shifted value)  shifted,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Refreshed():
return refreshed(_that);case _PeriodChanged():
return periodChanged(_that);case _Shifted():
return shifted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Refreshed value)?  refreshed,TResult? Function( _PeriodChanged value)?  periodChanged,TResult? Function( _Shifted value)?  shifted,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Refreshed() when refreshed != null:
return refreshed(_that);case _PeriodChanged() when periodChanged != null:
return periodChanged(_that);case _Shifted() when shifted != null:
return shifted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function( EarningsPeriod period)?  periodChanged,TResult Function( bool forward)?  shifted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _PeriodChanged() when periodChanged != null:
return periodChanged(_that.period);case _Shifted() when shifted != null:
return shifted(_that.forward);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function( EarningsPeriod period)  periodChanged,required TResult Function( bool forward)  shifted,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Refreshed():
return refreshed();case _PeriodChanged():
return periodChanged(_that.period);case _Shifted():
return shifted(_that.forward);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function( EarningsPeriod period)?  periodChanged,TResult? Function( bool forward)?  shifted,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Refreshed() when refreshed != null:
return refreshed();case _PeriodChanged() when periodChanged != null:
return periodChanged(_that.period);case _Shifted() when shifted != null:
return shifted(_that.forward);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements EarningsEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'EarningsEvent.started()';
}


}




/// @nodoc


class _Refreshed implements EarningsEvent {
  const _Refreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'EarningsEvent.refreshed()';
}


}




/// @nodoc


class _PeriodChanged implements EarningsEvent {
  const _PeriodChanged(this.period);
  

 final  EarningsPeriod period;

/// Create a copy of EarningsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodChangedCopyWith<_PeriodChanged> get copyWith => __$PeriodChangedCopyWithImpl<_PeriodChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeriodChanged&&(identical(other.period, period) || other.period == period));
}


@override
int get hashCode {
    return Object.hash(runtimeType,period);
}

@override
String toString() {
    return 'EarningsEvent.periodChanged(period: $period)';
}


}

/// @nodoc
abstract mixin class _$PeriodChangedCopyWith<$Res> implements $EarningsEventCopyWith<$Res> {
  factory _$PeriodChangedCopyWith(_PeriodChanged value, $Res Function(_PeriodChanged) _then) = __$PeriodChangedCopyWithImpl;
@useResult
$Res call({
 EarningsPeriod period
});




}
/// @nodoc
class __$PeriodChangedCopyWithImpl<$Res>
    implements _$PeriodChangedCopyWith<$Res> {
  __$PeriodChangedCopyWithImpl(this._self, this._then);

  final _PeriodChanged _self;
  final $Res Function(_PeriodChanged) _then;

/// Create a copy of EarningsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? period = null,}) {
  return _then(_PeriodChanged(
null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as EarningsPeriod,
  ));
}


}

/// @nodoc


class _Shifted implements EarningsEvent {
  const _Shifted({required this.forward});
  

 final  bool forward;

/// Create a copy of EarningsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftedCopyWith<_Shifted> get copyWith => __$ShiftedCopyWithImpl<_Shifted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shifted&&(identical(other.forward, forward) || other.forward == forward));
}


@override
int get hashCode {
    return Object.hash(runtimeType,forward);
}

@override
String toString() {
    return 'EarningsEvent.shifted(forward: $forward)';
}


}

/// @nodoc
abstract mixin class _$ShiftedCopyWith<$Res> implements $EarningsEventCopyWith<$Res> {
  factory _$ShiftedCopyWith(_Shifted value, $Res Function(_Shifted) _then) = __$ShiftedCopyWithImpl;
@useResult
$Res call({
 bool forward
});




}
/// @nodoc
class __$ShiftedCopyWithImpl<$Res>
    implements _$ShiftedCopyWith<$Res> {
  __$ShiftedCopyWithImpl(this._self, this._then);

  final _Shifted _self;
  final $Res Function(_Shifted) _then;

/// Create a copy of EarningsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forward = null,}) {
  return _then(_Shifted(
forward: null == forward ? _self.forward : forward // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$EarningsState {

 LoadStatus get status; EarningsPeriod get period; DateTime get date; EarningsSummary? get summary; String? get message;
/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsStateCopyWith<EarningsState> get copyWith => _$EarningsStateCopyWithImpl<EarningsState>(this as EarningsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EarningsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.summary, _this.summary) || other.summary == _this.summary)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as EarningsState;
  return Object.hash(runtimeType,_this.status,_this.period,_this.date,_this.summary,_this.message);
}

@override
String toString() {
  final _this = this as EarningsState;
  return 'EarningsState(status: ${_this.status}, period: ${_this.period}, date: ${_this.date}, summary: ${_this.summary}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $EarningsStateCopyWith<$Res>  {
  factory $EarningsStateCopyWith(EarningsState value, $Res Function(EarningsState) _then) = _$EarningsStateCopyWithImpl;
@useResult
$Res call({
 LoadStatus status, EarningsPeriod period, DateTime date, EarningsSummary? summary, String? message
});


$EarningsSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class _$EarningsStateCopyWithImpl<$Res>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._self, this._then);

  final EarningsState _self;
  final $Res Function(EarningsState) _then;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? period = null,Object? date = null,Object? summary = freezed,Object? message = freezed,}) {
  return _then(EarningsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as EarningsPeriod,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as EarningsSummary?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $EarningsSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [EarningsState].
extension EarningsStatePatterns on EarningsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningsState value)  $default,){
final _that = this;
switch (_that) {
case _EarningsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningsState value)?  $default,){
final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoadStatus status,  EarningsPeriod period,  DateTime date,  EarningsSummary? summary,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
return $default(_that.status,_that.period,_that.date,_that.summary,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoadStatus status,  EarningsPeriod period,  DateTime date,  EarningsSummary? summary,  String? message)  $default,) {final _that = this;
switch (_that) {
case _EarningsState():
return $default(_that.status,_that.period,_that.date,_that.summary,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoadStatus status,  EarningsPeriod period,  DateTime date,  EarningsSummary? summary,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
return $default(_that.status,_that.period,_that.date,_that.summary,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _EarningsState extends EarningsState {
  const _EarningsState({this.status = LoadStatus.initial, this.period = EarningsPeriod.daily, required this.date, this.summary, this.message}): super._();
  

@override@JsonKey() final  LoadStatus status;
@override@JsonKey() final  EarningsPeriod period;
@override final  DateTime date;
@override final  EarningsSummary? summary;
@override final  String? message;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsStateCopyWith<_EarningsState> get copyWith => __$EarningsStateCopyWithImpl<_EarningsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsState&&(identical(other.status, status) || other.status == status)&&(identical(other.period, period) || other.period == period)&&(identical(other.date, date) || other.date == date)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,period,date,summary,message);
}

@override
String toString() {
    return 'EarningsState(status: $status, period: $period, date: $date, summary: $summary, message: $message)';
}


}

/// @nodoc
abstract mixin class _$EarningsStateCopyWith<$Res> implements $EarningsStateCopyWith<$Res> {
  factory _$EarningsStateCopyWith(_EarningsState value, $Res Function(_EarningsState) _then) = __$EarningsStateCopyWithImpl;
@override @useResult
$Res call({
 LoadStatus status, EarningsPeriod period, DateTime date, EarningsSummary? summary, String? message
});


@override $EarningsSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class __$EarningsStateCopyWithImpl<$Res>
    implements _$EarningsStateCopyWith<$Res> {
  __$EarningsStateCopyWithImpl(this._self, this._then);

  final _EarningsState _self;
  final $Res Function(_EarningsState) _then;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? period = null,Object? date = null,Object? summary = freezed,Object? message = freezed,}) {
  return _then(_EarningsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadStatus,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as EarningsPeriod,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as EarningsSummary?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $EarningsSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
