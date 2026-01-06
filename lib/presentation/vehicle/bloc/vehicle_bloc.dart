

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';
import 'package:next_machine_test/domain/entity/vehicle_item.dart';
import 'package:next_machine_test/domain/usecases/delete_vehicle_usecase.dart';
import 'package:next_machine_test/domain/usecases/get_vehicle_usecase.dart';
import 'package:next_machine_test/presentation/vehicle/event/vehicle_event.dart';
import 'package:next_machine_test/presentation/vehicle/state/vehicle_state.dart';

class VehicleBloc extends Bloc<VehicleEvent,VehicleState>{
 final GetVehicleUseCase getVehicleUseCase;
 final DeleteVehicleUsecase deleteVehicleUsecase;
  VehicleBloc({required this.deleteVehicleUsecase, required this.getVehicleUseCase}):super(VehicleState()){
    on<FetchVehiclesEvent>(_getVehicle);
    on<DeleteVehicleEvent>(_deleteVehicle);
  }

  int page =0;



  _getVehicle(FetchVehiclesEvent event, Emitter<VehicleState> emit) async{
    if(event.initial){
      page = 0;
    }
    if(state.getVehicle is Success  && state.limitExceed==false && event.initial==false){
      final list = (state.getVehicle as Success).data as List<VehicleItem>;
      page = page +1;
      var data ={
        "limit": 6,
        "skip": page,
        "searchingText": ""
      };
      emit(state.copyWith(
        fetching: true
      ));
      final result = await getVehicleUseCase.call(data);
      result.fold((l) {
        print("faluire");
        emit(state.copyWith(
          limitExceed: true
        ));
      }, (r) {
        final cList = [...list,...r];
        emit(state.copyWith(
            getVehicle: ApiFetchState.success(cList),
          fetching: false
        ));
      },);
    }
    else{
      emit(state.copyWith(
          getVehicle: ApiFetchState.loading()
      ));
      var data ={
        "limit": 6,
        "skip": page,
        "searchingText": ""
      };
      final result = await getVehicleUseCase.call(data);
      result.fold((l) {
        print("nodata");
        emit(state.copyWith(
            getVehicle: ApiFetchState.failure(l.message)
        ));
      }, (r) {
        emit(state.copyWith(
            getVehicle: ApiFetchState.success(r)
        ));
      },);
    }
  }

   _deleteVehicle(DeleteVehicleEvent event, Emitter<VehicleState> emit)async {
    emit(state.copyWith(
      deleteVehicle: ApiFetchState.loading()
    ));
    final result = await deleteVehicleUsecase.call({"vehicleId":event.id});
    result.fold((l) => emit(state.copyWith(
      deleteVehicle: ApiFetchState.failure(l.message)
    )), (r) => emit(state.copyWith(
      deleteVehicle: ApiFetchState.success(r)
    )),);
  }
}