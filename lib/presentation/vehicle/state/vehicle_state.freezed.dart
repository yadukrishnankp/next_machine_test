// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VehicleState {

 ApiFetchState<List<VehicleItem>> get getVehicle; ApiFetchState<Response> get deleteVehicle; bool get fetching; bool get limitExceed;
/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleStateCopyWith<VehicleState> get copyWith => _$VehicleStateCopyWithImpl<VehicleState>(this as VehicleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehicleState&&(identical(other.getVehicle, getVehicle) || other.getVehicle == getVehicle)&&(identical(other.deleteVehicle, deleteVehicle) || other.deleteVehicle == deleteVehicle)&&(identical(other.fetching, fetching) || other.fetching == fetching)&&(identical(other.limitExceed, limitExceed) || other.limitExceed == limitExceed));
}


@override
int get hashCode => Object.hash(runtimeType,getVehicle,deleteVehicle,fetching,limitExceed);

@override
String toString() {
  return 'VehicleState(getVehicle: $getVehicle, deleteVehicle: $deleteVehicle, fetching: $fetching, limitExceed: $limitExceed)';
}


}

/// @nodoc
abstract mixin class $VehicleStateCopyWith<$Res>  {
  factory $VehicleStateCopyWith(VehicleState value, $Res Function(VehicleState) _then) = _$VehicleStateCopyWithImpl;
@useResult
$Res call({
 ApiFetchState<List<VehicleItem>> getVehicle, ApiFetchState<Response> deleteVehicle, bool fetching, bool limitExceed
});


$ApiFetchStateCopyWith<List<VehicleItem>, $Res> get getVehicle;$ApiFetchStateCopyWith<Response<dynamic>, $Res> get deleteVehicle;

}
/// @nodoc
class _$VehicleStateCopyWithImpl<$Res>
    implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._self, this._then);

  final VehicleState _self;
  final $Res Function(VehicleState) _then;

/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? getVehicle = null,Object? deleteVehicle = null,Object? fetching = null,Object? limitExceed = null,}) {
  return _then(_self.copyWith(
getVehicle: null == getVehicle ? _self.getVehicle : getVehicle // ignore: cast_nullable_to_non_nullable
as ApiFetchState<List<VehicleItem>>,deleteVehicle: null == deleteVehicle ? _self.deleteVehicle : deleteVehicle // ignore: cast_nullable_to_non_nullable
as ApiFetchState<Response>,fetching: null == fetching ? _self.fetching : fetching // ignore: cast_nullable_to_non_nullable
as bool,limitExceed: null == limitExceed ? _self.limitExceed : limitExceed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFetchStateCopyWith<List<VehicleItem>, $Res> get getVehicle {
  
  return $ApiFetchStateCopyWith<List<VehicleItem>, $Res>(_self.getVehicle, (value) {
    return _then(_self.copyWith(getVehicle: value));
  });
}/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFetchStateCopyWith<Response<dynamic>, $Res> get deleteVehicle {
  
  return $ApiFetchStateCopyWith<Response<dynamic>, $Res>(_self.deleteVehicle, (value) {
    return _then(_self.copyWith(deleteVehicle: value));
  });
}
}


/// Adds pattern-matching-related methods to [VehicleState].
extension VehicleStatePatterns on VehicleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VehicleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VehicleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VehicleState value)  $default,){
final _that = this;
switch (_that) {
case _VehicleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VehicleState value)?  $default,){
final _that = this;
switch (_that) {
case _VehicleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ApiFetchState<List<VehicleItem>> getVehicle,  ApiFetchState<Response> deleteVehicle,  bool fetching,  bool limitExceed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VehicleState() when $default != null:
return $default(_that.getVehicle,_that.deleteVehicle,_that.fetching,_that.limitExceed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ApiFetchState<List<VehicleItem>> getVehicle,  ApiFetchState<Response> deleteVehicle,  bool fetching,  bool limitExceed)  $default,) {final _that = this;
switch (_that) {
case _VehicleState():
return $default(_that.getVehicle,_that.deleteVehicle,_that.fetching,_that.limitExceed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ApiFetchState<List<VehicleItem>> getVehicle,  ApiFetchState<Response> deleteVehicle,  bool fetching,  bool limitExceed)?  $default,) {final _that = this;
switch (_that) {
case _VehicleState() when $default != null:
return $default(_that.getVehicle,_that.deleteVehicle,_that.fetching,_that.limitExceed);case _:
  return null;

}
}

}

/// @nodoc


class _VehicleState implements VehicleState {
  const _VehicleState({this.getVehicle = const ApiFetchState.initial(), this.deleteVehicle = const ApiFetchState.initial(), this.fetching = false, this.limitExceed = false});
  

@override@JsonKey() final  ApiFetchState<List<VehicleItem>> getVehicle;
@override@JsonKey() final  ApiFetchState<Response> deleteVehicle;
@override@JsonKey() final  bool fetching;
@override@JsonKey() final  bool limitExceed;

/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VehicleStateCopyWith<_VehicleState> get copyWith => __$VehicleStateCopyWithImpl<_VehicleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VehicleState&&(identical(other.getVehicle, getVehicle) || other.getVehicle == getVehicle)&&(identical(other.deleteVehicle, deleteVehicle) || other.deleteVehicle == deleteVehicle)&&(identical(other.fetching, fetching) || other.fetching == fetching)&&(identical(other.limitExceed, limitExceed) || other.limitExceed == limitExceed));
}


@override
int get hashCode => Object.hash(runtimeType,getVehicle,deleteVehicle,fetching,limitExceed);

@override
String toString() {
  return 'VehicleState(getVehicle: $getVehicle, deleteVehicle: $deleteVehicle, fetching: $fetching, limitExceed: $limitExceed)';
}


}

/// @nodoc
abstract mixin class _$VehicleStateCopyWith<$Res> implements $VehicleStateCopyWith<$Res> {
  factory _$VehicleStateCopyWith(_VehicleState value, $Res Function(_VehicleState) _then) = __$VehicleStateCopyWithImpl;
@override @useResult
$Res call({
 ApiFetchState<List<VehicleItem>> getVehicle, ApiFetchState<Response> deleteVehicle, bool fetching, bool limitExceed
});


@override $ApiFetchStateCopyWith<List<VehicleItem>, $Res> get getVehicle;@override $ApiFetchStateCopyWith<Response<dynamic>, $Res> get deleteVehicle;

}
/// @nodoc
class __$VehicleStateCopyWithImpl<$Res>
    implements _$VehicleStateCopyWith<$Res> {
  __$VehicleStateCopyWithImpl(this._self, this._then);

  final _VehicleState _self;
  final $Res Function(_VehicleState) _then;

/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? getVehicle = null,Object? deleteVehicle = null,Object? fetching = null,Object? limitExceed = null,}) {
  return _then(_VehicleState(
getVehicle: null == getVehicle ? _self.getVehicle : getVehicle // ignore: cast_nullable_to_non_nullable
as ApiFetchState<List<VehicleItem>>,deleteVehicle: null == deleteVehicle ? _self.deleteVehicle : deleteVehicle // ignore: cast_nullable_to_non_nullable
as ApiFetchState<Response>,fetching: null == fetching ? _self.fetching : fetching // ignore: cast_nullable_to_non_nullable
as bool,limitExceed: null == limitExceed ? _self.limitExceed : limitExceed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFetchStateCopyWith<List<VehicleItem>, $Res> get getVehicle {
  
  return $ApiFetchStateCopyWith<List<VehicleItem>, $Res>(_self.getVehicle, (value) {
    return _then(_self.copyWith(getVehicle: value));
  });
}/// Create a copy of VehicleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiFetchStateCopyWith<Response<dynamic>, $Res> get deleteVehicle {
  
  return $ApiFetchStateCopyWith<Response<dynamic>, $Res>(_self.deleteVehicle, (value) {
    return _then(_self.copyWith(deleteVehicle: value));
  });
}
}

// dart format on
