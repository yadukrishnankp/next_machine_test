// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

 User get user; String get accessToken;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.user, user) || other.user == user)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,accessToken);

@override
String toString() {
  return 'LoginResponse(user: $user, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 User user, String accessToken
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? accessToken = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user,  String accessToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.user,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user,  String accessToken)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.user,_that.accessToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user,  String accessToken)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.user,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({required this.user, required this.accessToken});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  User user;
@override final  String accessToken;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.user, user) || other.user == user)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,accessToken);

@override
String toString() {
  return 'LoginResponse(user: $user, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 User user, String accessToken
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? accessToken = null,}) {
  return _then(_LoginResponse(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

@JsonKey(name: '_id') String get id;@JsonKey(name: '_name') String get name;@JsonKey(name: '_uid') String get uid;@JsonKey(name: '_otp') int get otp;@JsonKey(name: '_mobileNumber') String get mobileNumber;@JsonKey(name: '_otpExpiry') int get otpExpiry;@JsonKey(name: '_createdAt') int get createdAt;@JsonKey(name: '_checkInStatus') int get checkInStatus;@JsonKey(name: '_createdUserId') String get createdUserId;@JsonKey(name: '_updatedAt') int get updatedAt;@JsonKey(name: '_updatedUserId') String get updatedUserId;@JsonKey(name: '_status') int get status;@JsonKey(name: '__v') int get v;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otpExpiry, otpExpiry) || other.otpExpiry == otpExpiry)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.checkInStatus, checkInStatus) || other.checkInStatus == checkInStatus)&&(identical(other.createdUserId, createdUserId) || other.createdUserId == createdUserId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.updatedUserId, updatedUserId) || other.updatedUserId == updatedUserId)&&(identical(other.status, status) || other.status == status)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,uid,otp,mobileNumber,otpExpiry,createdAt,checkInStatus,createdUserId,updatedAt,updatedUserId,status,v);

@override
String toString() {
  return 'User(id: $id, name: $name, uid: $uid, otp: $otp, mobileNumber: $mobileNumber, otpExpiry: $otpExpiry, createdAt: $createdAt, checkInStatus: $checkInStatus, createdUserId: $createdUserId, updatedAt: $updatedAt, updatedUserId: $updatedUserId, status: $status, v: $v)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: '_name') String name,@JsonKey(name: '_uid') String uid,@JsonKey(name: '_otp') int otp,@JsonKey(name: '_mobileNumber') String mobileNumber,@JsonKey(name: '_otpExpiry') int otpExpiry,@JsonKey(name: '_createdAt') int createdAt,@JsonKey(name: '_checkInStatus') int checkInStatus,@JsonKey(name: '_createdUserId') String createdUserId,@JsonKey(name: '_updatedAt') int updatedAt,@JsonKey(name: '_updatedUserId') String updatedUserId,@JsonKey(name: '_status') int status,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? uid = null,Object? otp = null,Object? mobileNumber = null,Object? otpExpiry = null,Object? createdAt = null,Object? checkInStatus = null,Object? createdUserId = null,Object? updatedAt = null,Object? updatedUserId = null,Object? status = null,Object? v = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,otpExpiry: null == otpExpiry ? _self.otpExpiry : otpExpiry // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,checkInStatus: null == checkInStatus ? _self.checkInStatus : checkInStatus // ignore: cast_nullable_to_non_nullable
as int,createdUserId: null == createdUserId ? _self.createdUserId : createdUserId // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,updatedUserId: null == updatedUserId ? _self.updatedUserId : updatedUserId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: '_name')  String name, @JsonKey(name: '_uid')  String uid, @JsonKey(name: '_otp')  int otp, @JsonKey(name: '_mobileNumber')  String mobileNumber, @JsonKey(name: '_otpExpiry')  int otpExpiry, @JsonKey(name: '_createdAt')  int createdAt, @JsonKey(name: '_checkInStatus')  int checkInStatus, @JsonKey(name: '_createdUserId')  String createdUserId, @JsonKey(name: '_updatedAt')  int updatedAt, @JsonKey(name: '_updatedUserId')  String updatedUserId, @JsonKey(name: '_status')  int status, @JsonKey(name: '__v')  int v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.uid,_that.otp,_that.mobileNumber,_that.otpExpiry,_that.createdAt,_that.checkInStatus,_that.createdUserId,_that.updatedAt,_that.updatedUserId,_that.status,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: '_name')  String name, @JsonKey(name: '_uid')  String uid, @JsonKey(name: '_otp')  int otp, @JsonKey(name: '_mobileNumber')  String mobileNumber, @JsonKey(name: '_otpExpiry')  int otpExpiry, @JsonKey(name: '_createdAt')  int createdAt, @JsonKey(name: '_checkInStatus')  int checkInStatus, @JsonKey(name: '_createdUserId')  String createdUserId, @JsonKey(name: '_updatedAt')  int updatedAt, @JsonKey(name: '_updatedUserId')  String updatedUserId, @JsonKey(name: '_status')  int status, @JsonKey(name: '__v')  int v)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.uid,_that.otp,_that.mobileNumber,_that.otpExpiry,_that.createdAt,_that.checkInStatus,_that.createdUserId,_that.updatedAt,_that.updatedUserId,_that.status,_that.v);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: '_name')  String name, @JsonKey(name: '_uid')  String uid, @JsonKey(name: '_otp')  int otp, @JsonKey(name: '_mobileNumber')  String mobileNumber, @JsonKey(name: '_otpExpiry')  int otpExpiry, @JsonKey(name: '_createdAt')  int createdAt, @JsonKey(name: '_checkInStatus')  int checkInStatus, @JsonKey(name: '_createdUserId')  String createdUserId, @JsonKey(name: '_updatedAt')  int updatedAt, @JsonKey(name: '_updatedUserId')  String updatedUserId, @JsonKey(name: '_status')  int status, @JsonKey(name: '__v')  int v)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.uid,_that.otp,_that.mobileNumber,_that.otpExpiry,_that.createdAt,_that.checkInStatus,_that.createdUserId,_that.updatedAt,_that.updatedUserId,_that.status,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: '_id') required this.id, @JsonKey(name: '_name') required this.name, @JsonKey(name: '_uid') required this.uid, @JsonKey(name: '_otp') required this.otp, @JsonKey(name: '_mobileNumber') required this.mobileNumber, @JsonKey(name: '_otpExpiry') required this.otpExpiry, @JsonKey(name: '_createdAt') required this.createdAt, @JsonKey(name: '_checkInStatus') required this.checkInStatus, @JsonKey(name: '_createdUserId') required this.createdUserId, @JsonKey(name: '_updatedAt') required this.updatedAt, @JsonKey(name: '_updatedUserId') required this.updatedUserId, @JsonKey(name: '_status') required this.status, @JsonKey(name: '__v') required this.v});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: '_name') final  String name;
@override@JsonKey(name: '_uid') final  String uid;
@override@JsonKey(name: '_otp') final  int otp;
@override@JsonKey(name: '_mobileNumber') final  String mobileNumber;
@override@JsonKey(name: '_otpExpiry') final  int otpExpiry;
@override@JsonKey(name: '_createdAt') final  int createdAt;
@override@JsonKey(name: '_checkInStatus') final  int checkInStatus;
@override@JsonKey(name: '_createdUserId') final  String createdUserId;
@override@JsonKey(name: '_updatedAt') final  int updatedAt;
@override@JsonKey(name: '_updatedUserId') final  String updatedUserId;
@override@JsonKey(name: '_status') final  int status;
@override@JsonKey(name: '__v') final  int v;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otpExpiry, otpExpiry) || other.otpExpiry == otpExpiry)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.checkInStatus, checkInStatus) || other.checkInStatus == checkInStatus)&&(identical(other.createdUserId, createdUserId) || other.createdUserId == createdUserId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.updatedUserId, updatedUserId) || other.updatedUserId == updatedUserId)&&(identical(other.status, status) || other.status == status)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,uid,otp,mobileNumber,otpExpiry,createdAt,checkInStatus,createdUserId,updatedAt,updatedUserId,status,v);

@override
String toString() {
  return 'User(id: $id, name: $name, uid: $uid, otp: $otp, mobileNumber: $mobileNumber, otpExpiry: $otpExpiry, createdAt: $createdAt, checkInStatus: $checkInStatus, createdUserId: $createdUserId, updatedAt: $updatedAt, updatedUserId: $updatedUserId, status: $status, v: $v)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: '_name') String name,@JsonKey(name: '_uid') String uid,@JsonKey(name: '_otp') int otp,@JsonKey(name: '_mobileNumber') String mobileNumber,@JsonKey(name: '_otpExpiry') int otpExpiry,@JsonKey(name: '_createdAt') int createdAt,@JsonKey(name: '_checkInStatus') int checkInStatus,@JsonKey(name: '_createdUserId') String createdUserId,@JsonKey(name: '_updatedAt') int updatedAt,@JsonKey(name: '_updatedUserId') String updatedUserId,@JsonKey(name: '_status') int status,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? uid = null,Object? otp = null,Object? mobileNumber = null,Object? otpExpiry = null,Object? createdAt = null,Object? checkInStatus = null,Object? createdUserId = null,Object? updatedAt = null,Object? updatedUserId = null,Object? status = null,Object? v = null,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as int,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,otpExpiry: null == otpExpiry ? _self.otpExpiry : otpExpiry // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,checkInStatus: null == checkInStatus ? _self.checkInStatus : checkInStatus // ignore: cast_nullable_to_non_nullable
as int,createdUserId: null == createdUserId ? _self.createdUserId : createdUserId // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,updatedUserId: null == updatedUserId ? _self.updatedUserId : updatedUserId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
