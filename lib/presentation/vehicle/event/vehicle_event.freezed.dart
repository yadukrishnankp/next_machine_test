// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VehicleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehicleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VehicleEvent()';
}


}

/// @nodoc
class $VehicleEventCopyWith<$Res>  {
$VehicleEventCopyWith(VehicleEvent _, $Res Function(VehicleEvent) __);
}


/// Adds pattern-matching-related methods to [VehicleEvent].
extension VehicleEventPatterns on VehicleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchVehiclesEvent value)?  fetchVehicles,TResult Function( DeleteVehicleEvent value)?  deleteVehicle,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchVehiclesEvent() when fetchVehicles != null:
return fetchVehicles(_that);case DeleteVehicleEvent() when deleteVehicle != null:
return deleteVehicle(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchVehiclesEvent value)  fetchVehicles,required TResult Function( DeleteVehicleEvent value)  deleteVehicle,}){
final _that = this;
switch (_that) {
case FetchVehiclesEvent():
return fetchVehicles(_that);case DeleteVehicleEvent():
return deleteVehicle(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchVehiclesEvent value)?  fetchVehicles,TResult? Function( DeleteVehicleEvent value)?  deleteVehicle,}){
final _that = this;
switch (_that) {
case FetchVehiclesEvent() when fetchVehicles != null:
return fetchVehicles(_that);case DeleteVehicleEvent() when deleteVehicle != null:
return deleteVehicle(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool initial)?  fetchVehicles,TResult Function( String id)?  deleteVehicle,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchVehiclesEvent() when fetchVehicles != null:
return fetchVehicles(_that.initial);case DeleteVehicleEvent() when deleteVehicle != null:
return deleteVehicle(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool initial)  fetchVehicles,required TResult Function( String id)  deleteVehicle,}) {final _that = this;
switch (_that) {
case FetchVehiclesEvent():
return fetchVehicles(_that.initial);case DeleteVehicleEvent():
return deleteVehicle(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool initial)?  fetchVehicles,TResult? Function( String id)?  deleteVehicle,}) {final _that = this;
switch (_that) {
case FetchVehiclesEvent() when fetchVehicles != null:
return fetchVehicles(_that.initial);case DeleteVehicleEvent() when deleteVehicle != null:
return deleteVehicle(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class FetchVehiclesEvent implements VehicleEvent {
  const FetchVehiclesEvent({this.initial = false});
  

@JsonKey() final  bool initial;

/// Create a copy of VehicleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchVehiclesEventCopyWith<FetchVehiclesEvent> get copyWith => _$FetchVehiclesEventCopyWithImpl<FetchVehiclesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchVehiclesEvent&&(identical(other.initial, initial) || other.initial == initial));
}


@override
int get hashCode => Object.hash(runtimeType,initial);

@override
String toString() {
  return 'VehicleEvent.fetchVehicles(initial: $initial)';
}


}

/// @nodoc
abstract mixin class $FetchVehiclesEventCopyWith<$Res> implements $VehicleEventCopyWith<$Res> {
  factory $FetchVehiclesEventCopyWith(FetchVehiclesEvent value, $Res Function(FetchVehiclesEvent) _then) = _$FetchVehiclesEventCopyWithImpl;
@useResult
$Res call({
 bool initial
});




}
/// @nodoc
class _$FetchVehiclesEventCopyWithImpl<$Res>
    implements $FetchVehiclesEventCopyWith<$Res> {
  _$FetchVehiclesEventCopyWithImpl(this._self, this._then);

  final FetchVehiclesEvent _self;
  final $Res Function(FetchVehiclesEvent) _then;

/// Create a copy of VehicleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initial = null,}) {
  return _then(FetchVehiclesEvent(
initial: null == initial ? _self.initial : initial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class DeleteVehicleEvent implements VehicleEvent {
  const DeleteVehicleEvent(this.id);
  

 final  String id;

/// Create a copy of VehicleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteVehicleEventCopyWith<DeleteVehicleEvent> get copyWith => _$DeleteVehicleEventCopyWithImpl<DeleteVehicleEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteVehicleEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'VehicleEvent.deleteVehicle(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteVehicleEventCopyWith<$Res> implements $VehicleEventCopyWith<$Res> {
  factory $DeleteVehicleEventCopyWith(DeleteVehicleEvent value, $Res Function(DeleteVehicleEvent) _then) = _$DeleteVehicleEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteVehicleEventCopyWithImpl<$Res>
    implements $DeleteVehicleEventCopyWith<$Res> {
  _$DeleteVehicleEventCopyWithImpl(this._self, this._then);

  final DeleteVehicleEvent _self;
  final $Res Function(DeleteVehicleEvent) _then;

/// Create a copy of VehicleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteVehicleEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
