

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';
import 'package:next_machine_test/domain/usecases/creata_vehicle_usecase.dart';

import '../event/create_vehicle_event.dart';
import '../state/create_vehicle_state.dart';

class CreateVehicleBloc extends Bloc<CreateVehicleEvent, CreateVehicleState> {
  final CreateVehicleUseCase createVehicleUseCase;
  CreateVehicleBloc({required this.createVehicleUseCase}) : super(const CreateVehicleState()) {
    on<VehicleNameChanged>(_onVehicleNameChanged);
    on<ModelChanged>(_onModelChanged);
    on<ColorChanged>(_onColorChanged);
    on<VehicleNumberChanged>(_onVehicleNumberChanged);
    on<Save>(_onSave);
  }

  void _onVehicleNameChanged(
      VehicleNameChanged event,
      Emitter<CreateVehicleState> emit,
      ) {
    emit(state.copyWith(vehicleName: event.value));
  }

  void _onModelChanged(
      ModelChanged event,
      Emitter<CreateVehicleState> emit,
      ) {
    emit(state.copyWith(model: event.value));
  }

  void _onColorChanged(
      ColorChanged event,
      Emitter<CreateVehicleState> emit,
      ) {
    emit(state.copyWith(color: event.value));
  }

  void _onVehicleNumberChanged(
      VehicleNumberChanged event,
      Emitter<CreateVehicleState> emit,
      ) {
    emit(state.copyWith(vehicleNumber: event.value));
  }

  Future<void> _onSave(
      Save event,
      Emitter<CreateVehicleState> emit,
      ) async {
    emit(state.copyWith(
      createVehicle: ApiFetchState.loading()
    ));
    final data = {
      "name": state.vehicleName,
      "model":state.model,
      "color":state.color,
      "vehicleNumber":state.vehicleNumber
    };
    final result = await createVehicleUseCase.call(data);
    result.fold((l) => emit(state.copyWith(
      createVehicle: ApiFetchState.failure(l.message)
    )), (r) => emit(state.copyWith(
      createVehicle: ApiFetchState.success(r)
    )),);
  }
}
