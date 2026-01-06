
import 'package:dartz/dartz.dart';
import 'package:next_machine_test/core/network/api_exception.dart';
import 'package:next_machine_test/data/model/login_response.dart';
import 'package:next_machine_test/domain/repo/auth_repo.dart';

class LoginUseCase{
  final AuthRepo authRepo;

  LoginUseCase({required this.authRepo});

  Future<Either<ApiException,LoginResponse>>call(Map<String, dynamic> map)async{
    final result = await authRepo.login(map);
    return result;
  }
}