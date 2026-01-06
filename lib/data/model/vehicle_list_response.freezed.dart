// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VehicleListResponse {

 String get message; VehicleListData get data;
/// Create a copy of VehicleListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleListResponseCopyWith<VehicleListResponse> get copyWith => _$VehicleListResponseCopyWithImpl<VehicleListResponse>(this as VehicleListResponse, _$identity);

  /// Serializes this VehicleListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehicleListResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,data);

@override
String toString() {
  return 'VehicleListResponse(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $VehicleListResponseCopyWith<$Res>  {
  factory $VehicleListResponseCopyWith(VehicleListResponse value, $Res Function(VehicleListResponse) _then) = _$VehicleListResponseCopyWithImpl;
@useResult
$Res call({
 String message, VehicleListData data
});


$VehicleListDataCopyWith<$Res> get data;

}
/// @nodoc
class _$VehicleListResponseCopyWithImpl<$Res>
    implements $VehicleListResponseCopyWith<$Res> {
  _$VehicleListResponseCopyWithImpl(this._self, this._then);

  final VehicleListResponse _self;
  final $Res Function(VehicleListResponse) _then;

/// Create a copy of VehicleListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VehicleListData,
  ));
}
/// Create a copy of VehicleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VehicleListDataCopyWith<$Res> get data {
  
  return $VehicleListDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VehicleListResponse].
extension VehicleListResponsePatterns on VehicleListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VehicleListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VehicleListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VehicleListResponse value)  $default,){
final _that = this;
switch (_that) {
case _VehicleListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VehicleListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VehicleListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  VehicleListData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VehicleListResponse() when $default != null:
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  VehicleListData data)  $default,) {final _that = this;
switch (_that) {
case _VehicleListResponse():
return $default(_that.message,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  VehicleListData data)?  $default,) {final _that = this;
switch (_that) {
case _VehicleListResponse() when $default != null:
return $default(_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VehicleListResponse implements VehicleListResponse {
  const _VehicleListResponse({required this.message, required this.data});
  factory _VehicleListResponse.fromJson(Map<String, dynamic> json) => _$VehicleListResponseFromJson(json);

@override final  String message;
@override final  VehicleListData data;

/// Create a copy of VehicleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VehicleListResponseCopyWith<_VehicleListResponse> get copyWith => __$VehicleListResponseCopyWithImpl<_VehicleListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VehicleListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VehicleListResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,data);

@override
String toString() {
  return 'VehicleListResponse(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VehicleListResponseCopyWith<$Res> implements $VehicleListResponseCopyWith<$Res> {
  factory _$VehicleListResponseCopyWith(_VehicleListResponse value, $Res Function(_VehicleListResponse) _then) = __$VehicleListResponseCopyWithImpl;
@override @useResult
$Res call({
 String message, VehicleListData data
});


@override $VehicleListDataCopyWith<$Res> get data;

}
/// @nodoc
class __$VehicleListResponseCopyWithImpl<$Res>
    implements _$VehicleListResponseCopyWith<$Res> {
  __$VehicleListResponseCopyWithImpl(this._self, this._then);

  final _VehicleListResponse _self;
  final $Res Function(_VehicleListResponse) _then;

/// Create a copy of VehicleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? data = null,}) {
  return _then(_VehicleListResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VehicleListData,
  ));
}

/// Create a copy of VehicleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VehicleListDataCopyWith<$Res> get data {
  
  return $VehicleListDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$VehicleListData {

 List<Vehicle> get list;
/// Create a copy of VehicleListData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleListDataCopyWith<VehicleListData> get copyWith => _$VehicleListDataCopyWithImpl<VehicleListData>(this as VehicleListData, _$identity);

  /// Serializes this VehicleListData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VehicleListData&&const DeepCollectionEquality().equals(other.list, list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'VehicleListData(list: $list)';
}


}

/// @nodoc
abstract mixin class $VehicleListDataCopyWith<$Res>  {
  factory $VehicleListDataCopyWith(VehicleListData value, $Res Function(VehicleListData) _then) = _$VehicleListDataCopyWithImpl;
@useResult
$Res call({
 List<Vehicle> list
});




}
/// @nodoc
class _$VehicleListDataCopyWithImpl<$Res>
    implements $VehicleListDataCopyWith<$Res> {
  _$VehicleListDataCopyWithImpl(this._self, this._then);

  final VehicleListData _self;
  final $Res Function(VehicleListData) _then;

/// Create a copy of VehicleListData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<Vehicle>,
  ));
}

}


/// Adds pattern-matching-related methods to [VehicleListData].
extension VehicleListDataPatterns on VehicleListData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VehicleListData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VehicleListData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VehicleListData value)  $default,){
final _that = this;
switch (_that) {
case _VehicleListData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VehicleListData value)?  $default,){
final _that = this;
switch (_that) {
case _VehicleListData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Vehicle> list)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VehicleListData() when $default != null:
return $default(_that.list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Vehicle> list)  $default,) {final _that = this;
switch (_that) {
case _VehicleListData():
return $default(_that.list);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Vehicle> list)?  $default,) {final _that = this;
switch (_that) {
case _VehicleListData() when $default != null:
return $default(_that.list);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VehicleListData implements VehicleListData {
  const _VehicleListData({required final  List<Vehicle> list}): _list = list;
  factory _VehicleListData.fromJson(Map<String, dynamic> json) => _$VehicleListDataFromJson(json);

 final  List<Vehicle> _list;
@override List<Vehicle> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of VehicleListData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VehicleListDataCopyWith<_VehicleListData> get copyWith => __$VehicleListDataCopyWithImpl<_VehicleListData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VehicleListDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VehicleListData&&const DeepCollectionEquality().equals(other._list, _list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'VehicleListData(list: $list)';
}


}

/// @nodoc
abstract mixin class _$VehicleListDataCopyWith<$Res> implements $VehicleListDataCopyWith<$Res> {
  factory _$VehicleListDataCopyWith(_VehicleListData value, $Res Function(_VehicleListData) _then) = __$VehicleListDataCopyWithImpl;
@override @useResult
$Res call({
 List<Vehicle> list
});




}
/// @nodoc
class __$VehicleListDataCopyWithImpl<$Res>
    implements _$VehicleListDataCopyWith<$Res> {
  __$VehicleListDataCopyWithImpl(this._self, this._then);

  final _VehicleListData _self;
  final $Res Function(_VehicleListData) _then;

/// Create a copy of VehicleListData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(_VehicleListData(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<Vehicle>,
  ));
}


}


/// @nodoc
mixin _$Vehicle {

@JsonKey(name: '_id') String get id;@JsonKey(name: '_name') String get name;@JsonKey(name: '_number') String get number;@JsonKey(name: '_color') String get color;@JsonKey(name: '_model') String get model;@JsonKey(name: '_createdUserId') String? get createdUserId;@JsonKey(name: '_createdAt') int get createdAt;@JsonKey(name: '_updatedUserId') String? get updatedUserId;@JsonKey(name: '_updatedAt') int get updatedAt;@JsonKey(name: '_status') int get status;@JsonKey(name: '__v') int get v;
/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VehicleCopyWith<Vehicle> get copyWith => _$VehicleCopyWithImpl<Vehicle>(this as Vehicle, _$identity);

  /// Serializes this Vehicle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Vehicle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number)&&(identical(other.color, color) || other.color == color)&&(identical(other.model, model) || other.model == model)&&(identical(other.createdUserId, createdUserId) || other.createdUserId == createdUserId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedUserId, updatedUserId) || other.updatedUserId == updatedUserId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,number,color,model,createdUserId,createdAt,updatedUserId,updatedAt,status,v);

@override
String toString() {
  return 'Vehicle(id: $id, name: $name, number: $number, color: $color, model: $model, createdUserId: $createdUserId, createdAt: $createdAt, updatedUserId: $updatedUserId, updatedAt: $updatedAt, status: $status, v: $v)';
}


}

/// @nodoc
abstract mixin class $VehicleCopyWith<$Res>  {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) _then) = _$VehicleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: '_name') String name,@JsonKey(name: '_number') String number,@JsonKey(name: '_color') String color,@JsonKey(name: '_model') String model,@JsonKey(name: '_createdUserId') String? createdUserId,@JsonKey(name: '_createdAt') int createdAt,@JsonKey(name: '_updatedUserId') String? updatedUserId,@JsonKey(name: '_updatedAt') int updatedAt,@JsonKey(name: '_status') int status,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class _$VehicleCopyWithImpl<$Res>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._self, this._then);

  final Vehicle _self;
  final $Res Function(Vehicle) _then;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? number = null,Object? color = null,Object? model = null,Object? createdUserId = freezed,Object? createdAt = null,Object? updatedUserId = freezed,Object? updatedAt = null,Object? status = null,Object? v = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,createdUserId: freezed == createdUserId ? _self.createdUserId : createdUserId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,updatedUserId: freezed == updatedUserId ? _self.updatedUserId : updatedUserId // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Vehicle].
extension VehiclePatterns on Vehicle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Vehicle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Vehicle value)  $default,){
final _that = this;
switch (_that) {
case _Vehicle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Vehicle value)?  $default,){
final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: '_name')  String name, @JsonKey(name: '_number')  String number, @JsonKey(name: '_color')  String color, @JsonKey(name: '_model')  String model, @JsonKey(name: '_createdUserId')  String? createdUserId, @JsonKey(name: '_createdAt')  int createdAt, @JsonKey(name: '_updatedUserId')  String? updatedUserId, @JsonKey(name: '_updatedAt')  int updatedAt, @JsonKey(name: '_status')  int status, @JsonKey(name: '__v')  int v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
return $default(_that.id,_that.name,_that.number,_that.color,_that.model,_that.createdUserId,_that.createdAt,_that.updatedUserId,_that.updatedAt,_that.status,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: '_name')  String name, @JsonKey(name: '_number')  String number, @JsonKey(name: '_color')  String color, @JsonKey(name: '_model')  String model, @JsonKey(name: '_createdUserId')  String? createdUserId, @JsonKey(name: '_createdAt')  int createdAt, @JsonKey(name: '_updatedUserId')  String? updatedUserId, @JsonKey(name: '_updatedAt')  int updatedAt, @JsonKey(name: '_status')  int status, @JsonKey(name: '__v')  int v)  $default,) {final _that = this;
switch (_that) {
case _Vehicle():
return $default(_that.id,_that.name,_that.number,_that.color,_that.model,_that.createdUserId,_that.createdAt,_that.updatedUserId,_that.updatedAt,_that.status,_that.v);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: '_name')  String name, @JsonKey(name: '_number')  String number, @JsonKey(name: '_color')  String color, @JsonKey(name: '_model')  String model, @JsonKey(name: '_createdUserId')  String? createdUserId, @JsonKey(name: '_createdAt')  int createdAt, @JsonKey(name: '_updatedUserId')  String? updatedUserId, @JsonKey(name: '_updatedAt')  int updatedAt, @JsonKey(name: '_status')  int status, @JsonKey(name: '__v')  int v)?  $default,) {final _that = this;
switch (_that) {
case _Vehicle() when $default != null:
return $default(_that.id,_that.name,_that.number,_that.color,_that.model,_that.createdUserId,_that.createdAt,_that.updatedUserId,_that.updatedAt,_that.status,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Vehicle implements Vehicle {
  const _Vehicle({@JsonKey(name: '_id') required this.id, @JsonKey(name: '_name') required this.name, @JsonKey(name: '_number') required this.number, @JsonKey(name: '_color') required this.color, @JsonKey(name: '_model') required this.model, @JsonKey(name: '_createdUserId') this.createdUserId, @JsonKey(name: '_createdAt') required this.createdAt, @JsonKey(name: '_updatedUserId') this.updatedUserId, @JsonKey(name: '_updatedAt') required this.updatedAt, @JsonKey(name: '_status') required this.status, @JsonKey(name: '__v') required this.v});
  factory _Vehicle.fromJson(Map<String, dynamic> json) => _$VehicleFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: '_name') final  String name;
@override@JsonKey(name: '_number') final  String number;
@override@JsonKey(name: '_color') final  String color;
@override@JsonKey(name: '_model') final  String model;
@override@JsonKey(name: '_createdUserId') final  String? createdUserId;
@override@JsonKey(name: '_createdAt') final  int createdAt;
@override@JsonKey(name: '_updatedUserId') final  String? updatedUserId;
@override@JsonKey(name: '_updatedAt') final  int updatedAt;
@override@JsonKey(name: '_status') final  int status;
@override@JsonKey(name: '__v') final  int v;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VehicleCopyWith<_Vehicle> get copyWith => __$VehicleCopyWithImpl<_Vehicle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VehicleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vehicle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number)&&(identical(other.color, color) || other.color == color)&&(identical(other.model, model) || other.model == model)&&(identical(other.createdUserId, createdUserId) || other.createdUserId == createdUserId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedUserId, updatedUserId) || other.updatedUserId == updatedUserId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,number,color,model,createdUserId,createdAt,updatedUserId,updatedAt,status,v);

@override
String toString() {
  return 'Vehicle(id: $id, name: $name, number: $number, color: $color, model: $model, createdUserId: $createdUserId, createdAt: $createdAt, updatedUserId: $updatedUserId, updatedAt: $updatedAt, status: $status, v: $v)';
}


}

/// @nodoc
abstract mixin class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) _then) = __$VehicleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: '_name') String name,@JsonKey(name: '_number') String number,@JsonKey(name: '_color') String color,@JsonKey(name: '_model') String model,@JsonKey(name: '_createdUserId') String? createdUserId,@JsonKey(name: '_createdAt') int createdAt,@JsonKey(name: '_updatedUserId') String? updatedUserId,@JsonKey(name: '_updatedAt') int updatedAt,@JsonKey(name: '_status') int status,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class __$VehicleCopyWithImpl<$Res>
    implements _$VehicleCopyWith<$Res> {
  __$VehicleCopyWithImpl(this._self, this._then);

  final _Vehicle _self;
  final $Res Function(_Vehicle) _then;

/// Create a copy of Vehicle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? number = null,Object? color = null,Object? model = null,Object? createdUserId = freezed,Object? createdAt = null,Object? updatedUserId = freezed,Object? updatedAt = null,Object? status = null,Object? v = null,}) {
  return _then(_Vehicle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,createdUserId: freezed == createdUserId ? _self.createdUserId : createdUserId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,updatedUserId: freezed == updatedUserId ? _self.updatedUserId : updatedUserId // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
