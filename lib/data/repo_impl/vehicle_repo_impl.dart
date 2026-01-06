

import 'package:dartz/dartz.dart';
import 'package:dio/src/response.dart';
import 'package:next_machine_test/data/model/vehicle_list_response.dart';
import 'package:next_machine_test/data/remote_data_source/vehicle_reomte_data_source.dart';

import '../../core/network/api_exception.dart';
import '../../domain/repo/auth_repo.dart';
import '../../domain/repo/vehicle_repo.dart';
import '../remote_data_source/auth_data_source.dart';

class VehicleRepoImpl implements VehicleRepo{
  final VehicleDataSource vehicleDataSource;

  VehicleRepoImpl({required this.vehicleDataSource});
  @override
  Future<Either<ApiException, VehicleListResponse>> getVehicle(Map<String, dynamic> map)async {
    final result = await vehicleDataSource.getVehicle(map);
    return  result.fold((l) {
      return Left(l);
    }, (r) {
      final data = VehicleListResponse.fromJson(r.data);
      return Right(data);
    },);
  }

  @override
  Future<Either<ApiException, Response>> createVehicle(Map<String, dynamic> map) async{
    final result = await vehicleDataSource.createVehicle(map);
    return  result.fold((l) {
      return Left(l);
    }, (r) {
      return Right(r);
    },);
  }

  @override
  Future<Either<ApiException, Response>> deleteVehicle(Map<String, dynamic> map) async{
    final result = await vehicleDataSource.createVehicle(map);
    return  result.fold((l) {
      return Left(l);
    }, (r) {
      return Right(r);
    },);
  }
}