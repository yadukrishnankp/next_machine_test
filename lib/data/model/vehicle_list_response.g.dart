// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VehicleListResponse _$VehicleListResponseFromJson(Map<String, dynamic> json) =>
    _VehicleListResponse(
      message: json['message'] as String,
      data: VehicleListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleListResponseToJson(
  _VehicleListResponse instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

_VehicleListData _$VehicleListDataFromJson(Map<String, dynamic> json) =>
    _VehicleListData(
      list: (json['list'] as List<dynamic>)
          .map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehicleListDataToJson(_VehicleListData instance) =>
    <String, dynamic>{'list': instance.list};

_Vehicle _$VehicleFromJson(Map<String, dynamic> json) => _Vehicle(
  id: json['_id'] as String,
  name: json['_name'] as String,
  number: json['_number'] as String,
  color: json['_color'] as String,
  model: json['_model'] as String,
  createdUserId: json['_createdUserId'] as String?,
  createdAt: (json['_createdAt'] as num).toInt(),
  updatedUserId: json['_updatedUserId'] as String?,
  updatedAt: (json['_updatedAt'] as num).toInt(),
  status: (json['_status'] as num).toInt(),
  v: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$VehicleToJson(_Vehicle instance) => <String, dynamic>{
  '_id': instance.id,
  '_name': instance.name,
  '_number': instance.number,
  '_color': instance.color,
  '_model': instance.model,
  '_createdUserId': instance.createdUserId,
  '_createdAt': instance.createdAt,
  '_updatedUserId': instance.updatedUserId,
  '_updatedAt': instance.updatedAt,
  '_status': instance.status,
  '__v': instance.v,
};
