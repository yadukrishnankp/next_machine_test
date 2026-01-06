// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SetPhoneNumber value)?  setPhoneNumber,TResult Function( SetOtp value)?  setOtp,TResult Function( Login value)?  login,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SetPhoneNumber() when setPhoneNumber != null:
return setPhoneNumber(_that);case SetOtp() when setOtp != null:
return setOtp(_that);case Login() when login != null:
return login(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SetPhoneNumber value)  setPhoneNumber,required TResult Function( SetOtp value)  setOtp,required TResult Function( Login value)  login,}){
final _that = this;
switch (_that) {
case SetPhoneNumber():
return setPhoneNumber(_that);case SetOtp():
return setOtp(_that);case Login():
return login(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SetPhoneNumber value)?  setPhoneNumber,TResult? Function( SetOtp value)?  setOtp,TResult? Function( Login value)?  login,}){
final _that = this;
switch (_that) {
case SetPhoneNumber() when setPhoneNumber != null:
return setPhoneNumber(_that);case SetOtp() when setOtp != null:
return setOtp(_that);case Login() when login != null:
return login(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber)?  setPhoneNumber,TResult Function( String otp)?  setOtp,TResult Function()?  login,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SetPhoneNumber() when setPhoneNumber != null:
return setPhoneNumber(_that.phoneNumber);case SetOtp() when setOtp != null:
return setOtp(_that.otp);case Login() when login != null:
return login();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber)  setPhoneNumber,required TResult Function( String otp)  setOtp,required TResult Function()  login,}) {final _that = this;
switch (_that) {
case SetPhoneNumber():
return setPhoneNumber(_that.phoneNumber);case SetOtp():
return setOtp(_that.otp);case Login():
return login();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber)?  setPhoneNumber,TResult? Function( String otp)?  setOtp,TResult? Function()?  login,}) {final _that = this;
switch (_that) {
case SetPhoneNumber() when setPhoneNumber != null:
return setPhoneNumber(_that.phoneNumber);case SetOtp() when setOtp != null:
return setOtp(_that.otp);case Login() when login != null:
return login();case _:
  return null;

}
}

}

/// @nodoc


class SetPhoneNumber implements AuthEvent {
  const SetPhoneNumber({required this.phoneNumber});
  

 final  String phoneNumber;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetPhoneNumberCopyWith<SetPhoneNumber> get copyWith => _$SetPhoneNumberCopyWithImpl<SetPhoneNumber>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetPhoneNumber&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'AuthEvent.setPhoneNumber(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $SetPhoneNumberCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SetPhoneNumberCopyWith(SetPhoneNumber value, $Res Function(SetPhoneNumber) _then) = _$SetPhoneNumberCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$SetPhoneNumberCopyWithImpl<$Res>
    implements $SetPhoneNumberCopyWith<$Res> {
  _$SetPhoneNumberCopyWithImpl(this._self, this._then);

  final SetPhoneNumber _self;
  final $Res Function(SetPhoneNumber) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(SetPhoneNumber(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SetOtp implements AuthEvent {
  const SetOtp({required this.otp});
  

 final  String otp;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetOtpCopyWith<SetOtp> get copyWith => _$SetOtpCopyWithImpl<SetOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetOtp&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'AuthEvent.setOtp(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $SetOtpCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SetOtpCopyWith(SetOtp value, $Res Function(SetOtp) _then) = _$SetOtpCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class _$SetOtpCopyWithImpl<$Res>
    implements $SetOtpCopyWith<$Res> {
  _$SetOtpCopyWithImpl(this._self, this._then);

  final SetOtp _self;
  final $Res Function(SetOtp) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(SetOtp(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Login implements AuthEvent {
  const Login();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Login);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.login()';
}


}




// dart format on
