
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/network/api_exception.dart';
import '../../data/model/vehicle_list_response.dart';

abstract class VehicleRepo{
  Future<Either<ApiException,VehicleListResponse>>getVehicle(Map<String, dynamic> map);
  Future<Either<ApiException,Response>>createVehicle(Map<String, dynamic> map);
  Future<Either<ApiException,Response>>deleteVehicle(Map<String, dynamic> map);

}