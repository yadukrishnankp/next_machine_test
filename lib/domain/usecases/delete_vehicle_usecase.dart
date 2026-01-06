import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:next_machine_test/domain/repo/vehicle_repo.dart';

import '../../core/network/api_exception.dart';

class DeleteVehicleUsecase{
  final VehicleRepo vehicleRepo;

  DeleteVehicleUsecase({required this.vehicleRepo});
  Future<Either<ApiException,Response>>call(Map<String, dynamic> map)async{
    final result = await vehicleRepo.deleteVehicle(map);
    return result;
  }
}