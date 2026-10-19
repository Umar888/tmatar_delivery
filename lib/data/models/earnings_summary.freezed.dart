// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EarningsBar {

 String get label; double get amount;
/// Create a copy of EarningsBar
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsBarCopyWith<EarningsBar> get copyWith => _$EarningsBarCopyWithImpl<EarningsBar>(this as EarningsBar, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EarningsBar;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsBar&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}


@override
int get hashCode {
  final _this = this as EarningsBar;
  return Object.hash(runtimeType,_this.label,_this.amount);
}

@override
String toString() {
  final _this = this as EarningsBar;
  return 'EarningsBar(label: ${_this.label}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $EarningsBarCopyWith<$Res>  {
  factory $EarningsBarCopyWith(EarningsBar value, $Res Function(EarningsBar) _then) = _$EarningsBarCopyWithImpl;
@useResult
$Res call({
 String label, double amount
});




}
/// @nodoc
class _$EarningsBarCopyWithImpl<$Res>
    implements $EarningsBarCopyWith<$Res> {
  _$EarningsBarCopyWithImpl(this._self, this._then);

  final EarningsBar _self;
  final $Res Function(EarningsBar) _then;

/// Create a copy of EarningsBar
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? amount = null,}) {
  return _then(EarningsBar(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EarningsBar].
extension EarningsBarPatterns on EarningsBar {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningsBar value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningsBar() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningsBar value)  $default,){
final _that = this;
switch (_that) {
case _EarningsBar():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningsBar value)?  $default,){
final _that = this;
switch (_that) {
case _EarningsBar() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningsBar() when $default != null:
return $default(_that.label,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double amount)  $default,) {final _that = this;
switch (_that) {
case _EarningsBar():
return $default(_that.label,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _EarningsBar() when $default != null:
return $default(_that.label,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _EarningsBar implements EarningsBar {
  const _EarningsBar({required this.label, required this.amount});
  

@override final  String label;
@override final  double amount;

/// Create a copy of EarningsBar
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsBarCopyWith<_EarningsBar> get copyWith => __$EarningsBarCopyWithImpl<_EarningsBar>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsBar&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,label,amount);
}

@override
String toString() {
    return 'EarningsBar(label: $label, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$EarningsBarCopyWith<$Res> implements $EarningsBarCopyWith<$Res> {
  factory _$EarningsBarCopyWith(_EarningsBar value, $Res Function(_EarningsBar) _then) = __$EarningsBarCopyWithImpl;
@override @useResult
$Res call({
 String label, double amount
});




}
/// @nodoc
class __$EarningsBarCopyWithImpl<$Res>
    implements _$EarningsBarCopyWith<$Res> {
  __$EarningsBarCopyWithImpl(this._self, this._then);

  final _EarningsBar _self;
  final $Res Function(_EarningsBar) _then;

/// Create a copy of EarningsBar
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? amount = null,}) {
  return _then(_EarningsBar(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$EarningsSummary {

 EarningsPeriod get period; DateTime get date; String get rangeLabel; double get total; int get completedOrders; int get cancelledOrders; double get distanceKm; List<EarningsBar> get bars;
/// Create a copy of EarningsSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsSummaryCopyWith<EarningsSummary> get copyWith => _$EarningsSummaryCopyWithImpl<EarningsSummary>(this as EarningsSummary, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EarningsSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsSummary&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.rangeLabel, _this.rangeLabel) || other.rangeLabel == _this.rangeLabel)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.completedOrders, _this.completedOrders) || other.completedOrders == _this.completedOrders)&&(identical(other.cancelledOrders, _this.cancelledOrders) || other.cancelledOrders == _this.cancelledOrders)&&(identical(other.distanceKm, _this.distanceKm) || other.distanceKm == _this.distanceKm)&&const DeepCollectionEquality().equals(other.bars, _this.bars));
}


@override
int get hashCode {
  final _this = this as EarningsSummary;
  return Object.hash(runtimeType,_this.period,_this.date,_this.rangeLabel,_this.total,_this.completedOrders,_this.cancelledOrders,_this.distanceKm,const DeepCollectionEquality().hash(_this.bars));
}

@override
String toString() {
  final _this = this as EarningsSummary;
  return 'EarningsSummary(period: ${_this.period}, date: ${_this.date}, rangeLabel: ${_this.rangeLabel}, total: ${_this.total}, completedOrders: ${_this.completedOrders}, cancelledOrders: ${_this.cancelledOrders}, distanceKm: ${_this.distanceKm}, bars: ${_this.bars})';
}


}

/// @nodoc
abstract mixin class $EarningsSummaryCopyWith<$Res>  {
  factory $EarningsSummaryCopyWith(EarningsSummary value, $Res Function(EarningsSummary) _then) = _$EarningsSummaryCopyWithImpl;
@useResult
$Res call({
 EarningsPeriod period, DateTime date, String rangeLabel, double total, int completedOrders, int cancelledOrders, double distanceKm, List<EarningsBar> bars
});




}
/// @nodoc
class _$EarningsSummaryCopyWithImpl<$Res>
    implements $EarningsSummaryCopyWith<$Res> {
  _$EarningsSummaryCopyWithImpl(this._self, this._then);

  final EarningsSummary _self;
  final $Res Function(EarningsSummary) _then;

/// Create a copy of EarningsSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? date = null,Object? rangeLabel = null,Object? total = null,Object? completedOrders = null,Object? cancelledOrders = null,Object? distanceKm = null,Object? bars = null,}) {
  return _then(EarningsSummary(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as EarningsPeriod,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rangeLabel: null == rangeLabel ? _self.rangeLabel : rangeLabel // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,completedOrders: null == completedOrders ? _self.completedOrders : completedOrders // ignore: cast_nullable_to_non_nullable
as int,cancelledOrders: null == cancelledOrders ? _self.cancelledOrders : cancelledOrders // ignore: cast_nullable_to_non_nullable
as int,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,bars: null == bars ? _self.bars : bars // ignore: cast_nullable_to_non_nullable
as List<EarningsBar>,
  ));
}

}


/// Adds pattern-matching-related methods to [EarningsSummary].
extension EarningsSummaryPatterns on EarningsSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningsSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningsSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningsSummary value)  $default,){
final _that = this;
switch (_that) {
case _EarningsSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningsSummary value)?  $default,){
final _that = this;
switch (_that) {
case _EarningsSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EarningsPeriod period,  DateTime date,  String rangeLabel,  double total,  int completedOrders,  int cancelledOrders,  double distanceKm,  List<EarningsBar> bars)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningsSummary() when $default != null:
return $default(_that.period,_that.date,_that.rangeLabel,_that.total,_that.completedOrders,_that.cancelledOrders,_that.distanceKm,_that.bars);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EarningsPeriod period,  DateTime date,  String rangeLabel,  double total,  int completedOrders,  int cancelledOrders,  double distanceKm,  List<EarningsBar> bars)  $default,) {final _that = this;
switch (_that) {
case _EarningsSummary():
return $default(_that.period,_that.date,_that.rangeLabel,_that.total,_that.completedOrders,_that.cancelledOrders,_that.distanceKm,_that.bars);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EarningsPeriod period,  DateTime date,  String rangeLabel,  double total,  int completedOrders,  int cancelledOrders,  double distanceKm,  List<EarningsBar> bars)?  $default,) {final _that = this;
switch (_that) {
case _EarningsSummary() when $default != null:
return $default(_that.period,_that.date,_that.rangeLabel,_that.total,_that.completedOrders,_that.cancelledOrders,_that.distanceKm,_that.bars);case _:
  return null;

}
}

}

/// @nodoc


class _EarningsSummary implements EarningsSummary {
  const _EarningsSummary({required this.period, required this.date, required this.rangeLabel, required this.total, required this.completedOrders, required this.cancelledOrders, required this.distanceKm, required  List<EarningsBar> bars}): _bars = bars;
  

@override final  EarningsPeriod period;
@override final  DateTime date;
@override final  String rangeLabel;
@override final  double total;
@override final  int completedOrders;
@override final  int cancelledOrders;
@override final  double distanceKm;
 final  List<EarningsBar> _bars;
@override List<EarningsBar> get bars {
  if (_bars is EqualUnmodifiableListView) return _bars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bars);
}


/// Create a copy of EarningsSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsSummaryCopyWith<_EarningsSummary> get copyWith => __$EarningsSummaryCopyWithImpl<_EarningsSummary>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsSummary&&(identical(other.period, period) || other.period == period)&&(identical(other.date, date) || other.date == date)&&(identical(other.rangeLabel, rangeLabel) || other.rangeLabel == rangeLabel)&&(identical(other.total, total) || other.total == total)&&(identical(other.completedOrders, completedOrders) || other.completedOrders == completedOrders)&&(identical(other.cancelledOrders, cancelledOrders) || other.cancelledOrders == cancelledOrders)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&const DeepCollectionEquality().equals(other.bars, _bars));
}


@override
int get hashCode {
    return Object.hash(runtimeType,period,date,rangeLabel,total,completedOrders,cancelledOrders,distanceKm,const DeepCollectionEquality().hash(_bars));
}

@override
String toString() {
    return 'EarningsSummary(period: $period, date: $date, rangeLabel: $rangeLabel, total: $total, completedOrders: $completedOrders, cancelledOrders: $cancelledOrders, distanceKm: $distanceKm, bars: $bars)';
}


}

/// @nodoc
abstract mixin class _$EarningsSummaryCopyWith<$Res> implements $EarningsSummaryCopyWith<$Res> {
  factory _$EarningsSummaryCopyWith(_EarningsSummary value, $Res Function(_EarningsSummary) _then) = __$EarningsSummaryCopyWithImpl;
@override @useResult
$Res call({
 EarningsPeriod period, DateTime date, String rangeLabel, double total, int completedOrders, int cancelledOrders, double distanceKm, List<EarningsBar> bars
});




}
/// @nodoc
class __$EarningsSummaryCopyWithImpl<$Res>
    implements _$EarningsSummaryCopyWith<$Res> {
  __$EarningsSummaryCopyWithImpl(this._self, this._then);

  final _EarningsSummary _self;
  final $Res Function(_EarningsSummary) _then;

/// Create a copy of EarningsSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? date = null,Object? rangeLabel = null,Object? total = null,Object? completedOrders = null,Object? cancelledOrders = null,Object? distanceKm = null,Object? bars = null,}) {
  return _then(_EarningsSummary(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as EarningsPeriod,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,rangeLabel: null == rangeLabel ? _self.rangeLabel : rangeLabel // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,completedOrders: null == completedOrders ? _self.completedOrders : completedOrders // ignore: cast_nullable_to_non_nullable
as int,cancelledOrders: null == cancelledOrders ? _self.cancelledOrders : cancelledOrders // ignore: cast_nullable_to_non_nullable
as int,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,bars: null == bars ? _self._bars : bars // ignore: cast_nullable_to_non_nullable
as List<EarningsBar>,
  ));
}


}

// dart format on
