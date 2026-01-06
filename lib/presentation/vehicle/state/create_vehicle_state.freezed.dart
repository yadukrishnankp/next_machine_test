// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_vehicle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateVehicleState {

 String get vehicleName; String get model; String get color; String get vehicleNumber; ApiFetchState<Response> get createVehicle;
/// Create a copy of CreateVehicleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateVehicleStateCopyWith<CreateVehicleState> get copyWith => _$CreateVehicleStateCopyWithImpl<CreateVehicleState>(this as CreateVehicleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateVehicleState&&(identical(other.vehicleName, vehicleName) || other.vehicleName == vehicleName)&&(identical(other.model, model) || other.model == model)&&(identical(other.color, color) || other.color == color)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.createVehicle, createVehicle) || other.createVehicle == createVehicle));
}


@override
int get hashCode => Object.hash(runtimeType,vehicleName,model,color,vehicleNumber,createVehicle);

@override
String toString() {
  return 'CreateVehicleState(vehicleName: $vehicleName, model: $model, color: $color, vehicleNumber: $vehicleNumber, createVehicle: $createVehicle)';
}


}

/// @nodoc
abstract mixin class $CreateVehicleStateCopyWith<$Res>  {
  factory $CreateVehicleStateCopyWith(CreateVehicleState value, $Res Function(CreateVehicleState) _then) = _$CreateVehicleStateCopyWithImpl;
@useResult
$Res call({
 String vehicleName, String model, String color, String vehicleNumber, ApiFetchState<Response> createVehicle
});


$ApiFetchStateCopyWith<Response<dynamic>, $Res> get createVehicle;

}
/// @nodoc
class _$CreateVehicleStateCopyWithImpl<$Res>
    implements $CreateVehicleStateCopyWith<$Res> {
  _$CreateVehicleStateCopyWithImpl(this._self, this._then);

  final CreateVehicleState _self;
  final $Res Function(CreateVehicleState) _then;

/// Create a copy of CreateVehicleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vehicleName = null,Object? model = null,Object? color = null,Object? vehicleNumber = null,Object? createVehicle = null,}) {
  return _then(_self.copyWith(
vehicleName: null == vehicleName ? _self.vehicleName : vehicleName // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,vehicleNumber: null == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String,createVehicle: null == createVehicle ? _self.createVehicle : createVehicle // ignore: cast_nullable_to_non_nullable
as ApiFetchState<Response>,
  ));
}
/// Create a copy of CreateVehicleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFetchStateCopyWith<Response<dynamic>, $Res> get createVehicle {
  
  return $ApiFetchStateCopyWith<Response<dynamic>, $Res>(_self.createVehicle, (value) {
    return _then(_self.copyWith(createVehicle: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateVehicleState].
extension CreateVehicleStatePatterns on CreateVehicleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateVehicleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateVehicleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateVehicleState value)  $default,){
final _that = this;
switch (_that) {
case _CreateVehicleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateVehicleState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateVehicleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String vehicleName,  String model,  String color,  String vehicleNumber,  ApiFetchState<Response> createVehicle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateVehicleState() when $default != null:
return $default(_that.vehicleName,_that.model,_that.color,_that.vehicleNumber,_that.createVehicle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String vehicleName,  String model,  String color,  String vehicleNumber,  ApiFetchState<Response> createVehicle)  $default,) {final _that = this;
switch (_that) {
case _CreateVehicleState():
return $default(_that.vehicleName,_that.model,_that.color,_that.vehicleNumber,_that.createVehicle);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String vehicleName,  String model,  String color,  String vehicleNumber,  ApiFetchState<Response> createVehicle)?  $default,) {final _that = this;
switch (_that) {
case _CreateVehicleState() when $default != null:
return $default(_that.vehicleName,_that.model,_that.color,_that.vehicleNumber,_that.createVehicle);case _:
  return null;

}
}

}

/// @nodoc


class _CreateVehicleState implements CreateVehicleState {
  const _CreateVehicleState({this.vehicleName = '', this.model = '', this.color = '', this.vehicleNumber = '', this.createVehicle = const ApiFetchState.initial()});
  

@override@JsonKey() final  String vehicleName;
@override@JsonKey() final  String model;
@override@JsonKey() final  String color;
@override@JsonKey() final  String vehicleNumber;
@override@JsonKey() final  ApiFetchState<Response> createVehicle;

/// Create a copy of CreateVehicleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateVehicleStateCopyWith<_CreateVehicleState> get copyWith => __$CreateVehicleStateCopyWithImpl<_CreateVehicleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateVehicleState&&(identical(other.vehicleName, vehicleName) || other.vehicleName == vehicleName)&&(identical(other.model, model) || other.model == model)&&(identical(other.color, color) || other.color == color)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.createVehicle, createVehicle) || other.createVehicle == createVehicle));
}


@override
int get hashCode => Object.hash(runtimeType,vehicleName,model,color,vehicleNumber,createVehicle);

@override
String toString() {
  return 'CreateVehicleState(vehicleName: $vehicleName, model: $model, color: $color, vehicleNumber: $vehicleNumber, createVehicle: $createVehicle)';
}


}

/// @nodoc
abstract mixin class _$CreateVehicleStateCopyWith<$Res> implements $CreateVehicleStateCopyWith<$Res> {
  factory _$CreateVehicleStateCopyWith(_CreateVehicleState value, $Res Function(_CreateVehicleState) _then) = __$CreateVehicleStateCopyWithImpl;
@override @useResult
$Res call({
 String vehicleName, String model, String color, String vehicleNumber, ApiFetchState<Response> createVehicle
});


@override $ApiFetchStateCopyWith<Response<dynamic>, $Res> get createVehicle;

}
/// @nodoc
class __$CreateVehicleStateCopyWithImpl<$Res>
    implements _$CreateVehicleStateCopyWith<$Res> {
  __$CreateVehicleStateCopyWithImpl(this._self, this._then);

  final _CreateVehicleState _self;
  final $Res Function(_CreateVehicleState) _then;

/// Create a copy of CreateVehicleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vehicleName = null,Object? model = null,Object? color = null,Object? vehicleNumber = null,Object? createVehicle = null,}) {
  return _then(_CreateVehicleState(
vehicleName: null == vehicleName ? _self.vehicleName : vehicleName // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,vehicleNumber: null == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String,createVehicle: null == createVehicle ? _self.createVehicle : createVehicle // ignore: cast_nullable_to_non_nullable
as ApiFetchState<Response>,
  ));
}

/// Create a copy of CreateVehicleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFetchStateCopyWith<Response<dynamic>, $Res> get createVehicle {
  
  return $ApiFetchStateCopyWith<Response<dynamic>, $Res>(_self.createVehicle, (value) {
    return _then(_self.copyWith(createVehicle: value));
  });
}
}

// dart format on
