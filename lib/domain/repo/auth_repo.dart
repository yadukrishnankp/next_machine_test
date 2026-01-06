
import 'package:dartz/dartz.dart';
import 'package:next_machine_test/core/network/api_exception.dart';
import 'package:next_machine_test/data/model/login_response.dart';

abstract class AuthRepo{
  Future<Either<ApiException,LoginResponse>>login(Map<String, dynamic> map);
}