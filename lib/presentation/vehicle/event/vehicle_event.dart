import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_event.freezed.dart';

@freezed
sealed class VehicleEvent with _$VehicleEvent {
  const factory VehicleEvent.fetchVehicles({ @Default(false) bool initial}) = FetchVehiclesEvent;
  const factory VehicleEvent.deleteVehicle(String id) = DeleteVehicleEvent;
}
