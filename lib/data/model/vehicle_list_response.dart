import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_list_response.freezed.dart';
part 'vehicle_list_response.g.dart';

@freezed
sealed class VehicleListResponse with _$VehicleListResponse {
  const factory VehicleListResponse({
    required String message,
    required VehicleListData data,
  }) = _VehicleListResponse;

  factory VehicleListResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleListResponseFromJson(json);
}

@freezed
sealed class VehicleListData with _$VehicleListData {
  const factory VehicleListData({
    required List<Vehicle> list,
  }) = _VehicleListData;

  factory VehicleListData.fromJson(Map<String, dynamic> json) =>
      _$VehicleListDataFromJson(json);
}

@freezed
sealed class Vehicle with _$Vehicle {
  const factory Vehicle({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: '_name') required String name,
    @JsonKey(name: '_number') required String number,
    @JsonKey(name: '_color') required String color,
    @JsonKey(name: '_model') required String model,

    @JsonKey(name: '_createdUserId') String? createdUserId,
    @JsonKey(name: '_createdAt') required int createdAt,
    @JsonKey(name: '_updatedUserId') String? updatedUserId,
    @JsonKey(name: '_updatedAt') required int updatedAt,
    @JsonKey(name: '_status') required int status,
    @JsonKey(name: '__v') required int v,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}
