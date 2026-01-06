import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:next_machine_test/domain/repo/vehicle_repo.dart';

import '../../core/network/api_exception.dart';

class CreateVehicleUseCase{
  final VehicleRepo vehicleRepo;

  CreateVehicleUseCase({required this.vehicleRepo});
  Future<Either<ApiException,Response>>call(Map<String, dynamic> map)async{
    final result = await vehicleRepo.createVehicle(map);
  return result;
  }
}