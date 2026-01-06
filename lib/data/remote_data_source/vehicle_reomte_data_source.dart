import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/network/api_base_helper.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/network/api_exception.dart';

abstract class VehicleDataSource {
  Future<Either<ApiException,Response>> getVehicle(Map<String,dynamic> map);
  Future<Either<ApiException,Response>> createVehicle(Map<String,dynamic> map);
  Future<Either<ApiException,Response>> deleteVehicle(Map<String,dynamic> map);


}

class VehicleDataSourceImpl implements VehicleDataSource{
  final ApiBaseHelper apiBaseHelper;

  VehicleDataSourceImpl({required this.apiBaseHelper});

  @override
  Future<Either<ApiException, Response>> getVehicle(Map<String, dynamic> map)async {
    print("VehicleDataSourceImpl login");
    final result = await apiBaseHelper.post(APIEndPoints.urlString(EndPoints.getVehicle),data: map,isTokenRequired: false);
    return result.fold((l) {
      print("VehicleDataSourceImpl login error ${l.statusCode}");
      return Left(l);
    }, (r) {
      print("VehicleDataSourceImpl login success  ${r.data.toString()}");
      return Right(r);
    },);
  }

  @override
  Future<Either<ApiException, Response>> createVehicle(Map<String, dynamic> map ) async{
    print("VehicleDataSourceImpl login");
  final result = await apiBaseHelper.post(APIEndPoints.urlString(EndPoints.createVehicle),data: map,isTokenRequired: false);
  return result.fold((l) {
    print("VehicleDataSourceImpl login error ${l.statusCode}");
    return Left(l);
  }, (r) {
    print("VehicleDataSourceImpl login success  ${r.data.toString()}");
    return Right(r);
  },);
  }

  @override
  Future<Either<ApiException, Response>> deleteVehicle(Map<String, dynamic> map) async{
    print("VehicleDataSourceImpl login");
    final result = await apiBaseHelper.delete(APIEndPoints.urlString(EndPoints.deleteVehicle),data: map,isTokenRequired: false);
    return result.fold((l) {
      print("VehicleDataSourceImpl login error ${l.statusCode}");
      return Left(l);
    }, (r) {
      print("VehicleDataSourceImpl login success  ${r.data.toString()}");
      return Right(r);
    },);
  }



}