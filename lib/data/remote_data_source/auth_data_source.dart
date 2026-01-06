
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/network/api_base_helper.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/network/api_exception.dart';

abstract class AuthDataSource {
  Future<Either<ApiException,Response>> login(Map<String,dynamic> map);
}

class AuthDataSourceImpl implements AuthDataSource{
  final ApiBaseHelper apiBaseHelper;

  AuthDataSourceImpl({required this.apiBaseHelper});

  @override
  Future<Either<ApiException, Response>> login(Map<String, dynamic> map)async {
    print("AuthRemoteDatasourceImpl login");
    final result = await apiBaseHelper.post(APIEndPoints.urlString(EndPoints.login),data: map,isTokenRequired: false);
    return result.fold((l) {
      print("AuthRemoteDatasourceImpl login error ${l.statusCode}");
      return Left(l);
    }, (r) {
      print("AuthRemoteDatasourceImpl login success  ${r.data.toString()}");
      return Right(r);
    },);
  }

}