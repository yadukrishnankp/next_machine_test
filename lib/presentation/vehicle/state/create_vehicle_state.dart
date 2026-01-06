
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';

part 'create_vehicle_state.freezed.dart';

@freezed
sealed class CreateVehicleState with _$CreateVehicleState {
  const factory CreateVehicleState({
    @Default('') String vehicleName,
    @Default('') String model,
    @Default('') String color,
    @Default('') String vehicleNumber,
   @Default(ApiFetchState.initial()) ApiFetchState<Response> createVehicle,

  }) = _CreateVehicleState;
}
