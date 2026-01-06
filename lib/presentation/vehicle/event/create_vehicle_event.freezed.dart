// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_vehicle_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateVehicleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateVehicleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateVehicleEvent()';
}


}

/// @nodoc
class $CreateVehicleEventCopyWith<$Res>  {
$CreateVehicleEventCopyWith(CreateVehicleEvent _, $Res Function(CreateVehicleEvent) __);
}


/// Adds pattern-matching-related methods to [CreateVehicleEvent].
extension CreateVehicleEventPatterns on CreateVehicleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VehicleNameChanged value)?  vehicleNameChanged,TResult Function( ModelChanged value)?  modelChanged,TResult Function( ColorChanged value)?  colorChanged,TResult Function( VehicleNumberChanged value)?  vehicleNumberChanged,TResult Function( Save value)?  save,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VehicleNameChanged() when vehicleNameChanged != null:
return vehicleNameChanged(_that);case ModelChanged() when modelChanged != null:
return modelChanged(_that);case ColorChanged() when colorChanged != null:
return colorChanged(_that);case VehicleNumberChanged() when vehicleNumberChanged != null:
return vehicleNumberChanged(_that);case Save() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VehicleNameChanged value)  vehicleNameChanged,required TResult Function( ModelChanged value)  modelChanged,required TResult Function( ColorChanged value)  colorChanged,required TResult Function( VehicleNumberChanged value)  vehicleNumberChanged,required TResult Function( Save value)  save,}){
final _that = this;
switch (_that) {
case VehicleNameChanged():
return vehicleNameChanged(_that);case ModelChanged():
return modelChanged(_that);case ColorChanged():
return colorChanged(_that);case VehicleNumberChanged():
return vehicleNumberChanged(_that);case Save():
return save(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VehicleNameChanged value)?  vehicleNameChanged,TResult? Function( ModelChanged value)?  modelChanged,TResult? Function( ColorChanged value)?  colorChanged,TResult? Function( VehicleNumberChanged value)?  vehicleNumberChanged,TResult? Function( Save value)?  save,}){
final _that = this;
switch (_that) {
case VehicleNameChanged() when vehicleNameChanged != null:
return vehicleNameChanged(_that);case ModelChanged() when modelChanged != null:
return modelChanged(_that);case ColorChanged() when colorChanged != null:
return colorChanged(_that);case VehicleNumberChanged() when vehicleNumberChanged != null:
return vehicleNumberChanged(_that);case Save() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  vehicleNameChanged,TResult Function( String value)?  modelChanged,TResult Function( String value)?  colorChanged,TResult Function( String value)?  vehicleNumberChanged,TResult Function()?  save,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VehicleNameChanged() when vehicleNameChanged != null:
return vehicleNameChanged(_that.value);case ModelChanged() when modelChanged != null:
return modelChanged(_that.value);case ColorChanged() when colorChanged != null:
return colorChanged(_that.value);case VehicleNumberChanged() when vehicleNumberChanged != null:
return vehicleNumberChanged(_that.value);case Save() when save != null:
return save();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  vehicleNameChanged,required TResult Function( String value)  modelChanged,required TResult Function( String value)  colorChanged,required TResult Function( String value)  vehicleNumberChanged,required TResult Function()  save,}) {final _that = this;
switch (_that) {
case VehicleNameChanged():
return vehicleNameChanged(_that.value);case ModelChanged():
return modelChanged(_that.value);case ColorChanged():
return colorChanged(_that.value);case VehicleNumberChanged():
return vehicleNumberChanged(_that.value);case Save():
return save();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  vehicleNameChanged,TResult? Function( String value)?  modelChanged,TResult? Function( String value)?  colorChanged,TResult? Function( String value)?  vehicleNumberChanged,TResult? Function()?  save,}) {final _that = this;
switch (_that) {
case VehicleNameChanged() when vehicleNameChanged != null:
return vehicleNameChanged(_that.value);case ModelChanged() when modelChanged != null:
return modelChanged(_that.value);case ColorChanged() when colorChanged != null:
return colorChanged(_that.value);case VehicleNumberChanged() when vehicleNumberChanged != null:
return vehicleNumberChanged(_that.value);case Save() when save != null:
return save();case _:
  return null;

}
}

}

/// @nodoc


class VehicleNameChanged implements CreateVehicleEvent {
  const VehicleNameChanged(this.value);
  

 final  String value;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleNameChangedCopyWith<VehicleNameChanged> get copyWith => _$VehicleNameChangedCopyWithImpl<VehicleNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehicleNameChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CreateVehicleEvent.vehicleNameChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $VehicleNameChangedCopyWith<$Res> implements $CreateVehicleEventCopyWith<$Res> {
  factory $VehicleNameChangedCopyWith(VehicleNameChanged value, $Res Function(VehicleNameChanged) _then) = _$VehicleNameChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$VehicleNameChangedCopyWithImpl<$Res>
    implements $VehicleNameChangedCopyWith<$Res> {
  _$VehicleNameChangedCopyWithImpl(this._self, this._then);

  final VehicleNameChanged _self;
  final $Res Function(VehicleNameChanged) _then;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(VehicleNameChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ModelChanged implements CreateVehicleEvent {
  const ModelChanged(this.value);
  

 final  String value;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelChangedCopyWith<ModelChanged> get copyWith => _$ModelChangedCopyWithImpl<ModelChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CreateVehicleEvent.modelChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $ModelChangedCopyWith<$Res> implements $CreateVehicleEventCopyWith<$Res> {
  factory $ModelChangedCopyWith(ModelChanged value, $Res Function(ModelChanged) _then) = _$ModelChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$ModelChangedCopyWithImpl<$Res>
    implements $ModelChangedCopyWith<$Res> {
  _$ModelChangedCopyWithImpl(this._self, this._then);

  final ModelChanged _self;
  final $Res Function(ModelChanged) _then;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ModelChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ColorChanged implements CreateVehicleEvent {
  const ColorChanged(this.value);
  

 final  String value;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorChangedCopyWith<ColorChanged> get copyWith => _$ColorChangedCopyWithImpl<ColorChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CreateVehicleEvent.colorChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $ColorChangedCopyWith<$Res> implements $CreateVehicleEventCopyWith<$Res> {
  factory $ColorChangedCopyWith(ColorChanged value, $Res Function(ColorChanged) _then) = _$ColorChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$ColorChangedCopyWithImpl<$Res>
    implements $ColorChangedCopyWith<$Res> {
  _$ColorChangedCopyWithImpl(this._self, this._then);

  final ColorChanged _self;
  final $Res Function(ColorChanged) _then;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ColorChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VehicleNumberChanged implements CreateVehicleEvent {
  const VehicleNumberChanged(this.value);
  

 final  String value;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleNumberChangedCopyWith<VehicleNumberChanged> get copyWith => _$VehicleNumberChangedCopyWithImpl<VehicleNumberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehicleNumberChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CreateVehicleEvent.vehicleNumberChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $VehicleNumberChangedCopyWith<$Res> implements $CreateVehicleEventCopyWith<$Res> {
  factory $VehicleNumberChangedCopyWith(VehicleNumberChanged value, $Res Function(VehicleNumberChanged) _then) = _$VehicleNumberChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$VehicleNumberChangedCopyWithImpl<$Res>
    implements $VehicleNumberChangedCopyWith<$Res> {
  _$VehicleNumberChangedCopyWithImpl(this._self, this._then);

  final VehicleNumberChanged _self;
  final $Res Function(VehicleNumberChanged) _then;

/// Create a copy of CreateVehicleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(VehicleNumberChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Save implements CreateVehicleEvent {
  const Save();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Save);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateVehicleEvent.save()';
}


}




// dart format on
