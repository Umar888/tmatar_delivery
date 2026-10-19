// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PartnerProfile {

 String get id; String get name; String get phone; String get email; String get city; String get vehicleType; String get vehicleNumber; String get language; bool get isOnline; double get rating; String get bankName; String get bankAccount; String get ifsc;
/// Create a copy of PartnerProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartnerProfileCopyWith<PartnerProfile> get copyWith => _$PartnerProfileCopyWithImpl<PartnerProfile>(this as PartnerProfile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PartnerProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PartnerProfile&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.vehicleType, _this.vehicleType) || other.vehicleType == _this.vehicleType)&&(identical(other.vehicleNumber, _this.vehicleNumber) || other.vehicleNumber == _this.vehicleNumber)&&(identical(other.language, _this.language) || other.language == _this.language)&&(identical(other.isOnline, _this.isOnline) || other.isOnline == _this.isOnline)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.bankName, _this.bankName) || other.bankName == _this.bankName)&&(identical(other.bankAccount, _this.bankAccount) || other.bankAccount == _this.bankAccount)&&(identical(other.ifsc, _this.ifsc) || other.ifsc == _this.ifsc));
}


@override
int get hashCode {
  final _this = this as PartnerProfile;
  return Object.hash(runtimeType,_this.id,_this.name,_this.phone,_this.email,_this.city,_this.vehicleType,_this.vehicleNumber,_this.language,_this.isOnline,_this.rating,_this.bankName,_this.bankAccount,_this.ifsc);
}

@override
String toString() {
  final _this = this as PartnerProfile;
  return 'PartnerProfile(id: ${_this.id}, name: ${_this.name}, phone: ${_this.phone}, email: ${_this.email}, city: ${_this.city}, vehicleType: ${_this.vehicleType}, vehicleNumber: ${_this.vehicleNumber}, language: ${_this.language}, isOnline: ${_this.isOnline}, rating: ${_this.rating}, bankName: ${_this.bankName}, bankAccount: ${_this.bankAccount}, ifsc: ${_this.ifsc})';
}


}

/// @nodoc
abstract mixin class $PartnerProfileCopyWith<$Res>  {
  factory $PartnerProfileCopyWith(PartnerProfile value, $Res Function(PartnerProfile) _then) = _$PartnerProfileCopyWithImpl;
@useResult
$Res call({
 String id, String name, String phone, String email, String city, String vehicleType, String vehicleNumber, String language, bool isOnline, double rating, String bankName, String bankAccount, String ifsc
});




}
/// @nodoc
class _$PartnerProfileCopyWithImpl<$Res>
    implements $PartnerProfileCopyWith<$Res> {
  _$PartnerProfileCopyWithImpl(this._self, this._then);

  final PartnerProfile _self;
  final $Res Function(PartnerProfile) _then;

/// Create a copy of PartnerProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? email = null,Object? city = null,Object? vehicleType = null,Object? vehicleNumber = null,Object? language = null,Object? isOnline = null,Object? rating = null,Object? bankName = null,Object? bankAccount = null,Object? ifsc = null,}) {
  return _then(PartnerProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,vehicleNumber: null == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankAccount: null == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String,ifsc: null == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PartnerProfile].
extension PartnerProfilePatterns on PartnerProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PartnerProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PartnerProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PartnerProfile value)  $default,){
final _that = this;
switch (_that) {
case _PartnerProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PartnerProfile value)?  $default,){
final _that = this;
switch (_that) {
case _PartnerProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  String email,  String city,  String vehicleType,  String vehicleNumber,  String language,  bool isOnline,  double rating,  String bankName,  String bankAccount,  String ifsc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PartnerProfile() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.email,_that.city,_that.vehicleType,_that.vehicleNumber,_that.language,_that.isOnline,_that.rating,_that.bankName,_that.bankAccount,_that.ifsc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String phone,  String email,  String city,  String vehicleType,  String vehicleNumber,  String language,  bool isOnline,  double rating,  String bankName,  String bankAccount,  String ifsc)  $default,) {final _that = this;
switch (_that) {
case _PartnerProfile():
return $default(_that.id,_that.name,_that.phone,_that.email,_that.city,_that.vehicleType,_that.vehicleNumber,_that.language,_that.isOnline,_that.rating,_that.bankName,_that.bankAccount,_that.ifsc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String phone,  String email,  String city,  String vehicleType,  String vehicleNumber,  String language,  bool isOnline,  double rating,  String bankName,  String bankAccount,  String ifsc)?  $default,) {final _that = this;
switch (_that) {
case _PartnerProfile() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.email,_that.city,_that.vehicleType,_that.vehicleNumber,_that.language,_that.isOnline,_that.rating,_that.bankName,_that.bankAccount,_that.ifsc);case _:
  return null;

}
}

}

/// @nodoc


class _PartnerProfile extends PartnerProfile {
  const _PartnerProfile({required this.id, required this.name, required this.phone, required this.email, required this.city, required this.vehicleType, required this.vehicleNumber, required this.language, required this.isOnline, required this.rating, required this.bankName, required this.bankAccount, required this.ifsc}): super._();
  

@override final  String id;
@override final  String name;
@override final  String phone;
@override final  String email;
@override final  String city;
@override final  String vehicleType;
@override final  String vehicleNumber;
@override final  String language;
@override final  bool isOnline;
@override final  double rating;
@override final  String bankName;
@override final  String bankAccount;
@override final  String ifsc;

/// Create a copy of PartnerProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartnerProfileCopyWith<_PartnerProfile> get copyWith => __$PartnerProfileCopyWithImpl<_PartnerProfile>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PartnerProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.city, city) || other.city == city)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.language, language) || other.language == language)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,phone,email,city,vehicleType,vehicleNumber,language,isOnline,rating,bankName,bankAccount,ifsc);
}

@override
String toString() {
    return 'PartnerProfile(id: $id, name: $name, phone: $phone, email: $email, city: $city, vehicleType: $vehicleType, vehicleNumber: $vehicleNumber, language: $language, isOnline: $isOnline, rating: $rating, bankName: $bankName, bankAccount: $bankAccount, ifsc: $ifsc)';
}


}

/// @nodoc
abstract mixin class _$PartnerProfileCopyWith<$Res> implements $PartnerProfileCopyWith<$Res> {
  factory _$PartnerProfileCopyWith(_PartnerProfile value, $Res Function(_PartnerProfile) _then) = __$PartnerProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String phone, String email, String city, String vehicleType, String vehicleNumber, String language, bool isOnline, double rating, String bankName, String bankAccount, String ifsc
});




}
/// @nodoc
class __$PartnerProfileCopyWithImpl<$Res>
    implements _$PartnerProfileCopyWith<$Res> {
  __$PartnerProfileCopyWithImpl(this._self, this._then);

  final _PartnerProfile _self;
  final $Res Function(_PartnerProfile) _then;

/// Create a copy of PartnerProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? email = null,Object? city = null,Object? vehicleType = null,Object? vehicleNumber = null,Object? language = null,Object? isOnline = null,Object? rating = null,Object? bankName = null,Object? bankAccount = null,Object? ifsc = null,}) {
  return _then(_PartnerProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,vehicleNumber: null == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankAccount: null == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String,ifsc: null == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
