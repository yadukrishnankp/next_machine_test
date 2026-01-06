


import 'package:get_it/get_it.dart';
import 'package:next_machine_test/data/remote_data_source/auth_data_source.dart';
import 'package:next_machine_test/data/remote_data_source/vehicle_reomte_data_source.dart';
import 'package:next_machine_test/data/repo_impl/auth_repo_impl.dart';
import 'package:next_machine_test/data/repo_impl/vehicle_repo_impl.dart';
import 'package:next_machine_test/domain/repo/auth_repo.dart';
import 'package:next_machine_test/domain/repo/vehicle_repo.dart';
import 'package:next_machine_test/domain/usecases/creata_vehicle_usecase.dart';
import 'package:next_machine_test/domain/usecases/delete_vehicle_usecase.dart';
import 'package:next_machine_test/domain/usecases/login_usecase.dart';

import '../../domain/usecases/get_vehicle_usecase.dart';
import '../../presentation/auth/bloc/auth_bloc.dart';
import '../network/api_base_helper.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;


Future<void>  inIt()async{
  //network
  sl.registerSingleton<DioClient>(DioClient());
  sl.registerSingleton<ApiBaseHelper>(ApiBaseHelper(dioClient: sl()));

  sl.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(apiBaseHelper: sl()),);
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(authDataSource: sl()),);
  sl.registerLazySingleton(() => LoginUseCase(authRepo: sl()),);
  sl.registerLazySingleton(() => AuthBloc(loginUseCase: sl()),);

  sl.registerLazySingleton<VehicleDataSource>(() => VehicleDataSourceImpl(apiBaseHelper: sl()),);
  sl.registerLazySingleton<VehicleRepo>(() => VehicleRepoImpl(vehicleDataSource: sl()),);
  sl.registerLazySingleton(() => GetVehicleUseCase(vehicleRepo: sl()),);
  sl.registerLazySingleton(() => CreateVehicleUseCase(vehicleRepo: sl()),);
  sl.registerLazySingleton(() => DeleteVehicleUsecase(vehicleRepo: sl()),);

}
