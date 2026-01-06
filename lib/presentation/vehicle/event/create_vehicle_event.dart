import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_vehicle_event.freezed.dart';

@freezed
class CreateVehicleEvent with _$CreateVehicleEvent {
  const factory CreateVehicleEvent.vehicleNameChanged(String value) =
  VehicleNameChanged;

  const factory CreateVehicleEvent.modelChanged(String value) =
  ModelChanged;

  const factory CreateVehicleEvent.colorChanged(String value) =
  ColorChanged;

  const factory CreateVehicleEvent.vehicleNumberChanged(String value) =
  VehicleNumberChanged;

  const factory CreateVehicleEvent.save() = Save;
}
