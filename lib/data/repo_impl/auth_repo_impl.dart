
import 'package:dartz/dartz.dart';
import 'package:next_machine_test/core/network/api_exception.dart';
import 'package:next_machine_test/data/model/login_response.dart';
import 'package:next_machine_test/data/remote_data_source/auth_data_source.dart';
import 'package:next_machine_test/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  final AuthDataSource authDataSource;

  AuthRepoImpl({required this.authDataSource});
  @override
  Future<Either<ApiException, LoginResponse>> login(Map<String, dynamic> map)async {
    final result = await authDataSource.login(map);
  return  result.fold((l) {
      return Left(l);
    }, (r) {
      final data = LoginResponse.fromJson(r.data);
      return Right(data);
    },);
  }
}