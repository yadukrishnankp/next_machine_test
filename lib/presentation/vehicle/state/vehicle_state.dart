
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_machine_test/data/model/vehicle_list_response.dart';
import 'package:next_machine_test/presentation/vehicle/presentation/vehicle_list_screen.dart';
import '../../../core/network/api_fetch_state.dart';
import '../../../domain/entity/vehicle_item.dart';

part 'vehicle_state.freezed.dart';

@freezed
sealed class VehicleState with _$VehicleState {
  const factory VehicleState({
    @Default(ApiFetchState.initial())ApiFetchState<List<VehicleItem>> getVehicle,
    @Default(ApiFetchState.initial())ApiFetchState<Response> deleteVehicle,
    @Default(false)bool fetching,
  @Default(false)bool limitExceed
}) = _VehicleState;
}
