

import 'package:dartz/dartz.dart';
import 'package:next_machine_test/data/model/vehicle_list_response.dart';
import 'package:next_machine_test/domain/repo/vehicle_repo.dart';
import 'package:next_machine_test/presentation/vehicle/presentation/vehicle_list_screen.dart';

import '../../core/network/api_exception.dart';
import '../entity/vehicle_item.dart';

class GetVehicleUseCase{
  final VehicleRepo vehicleRepo;

  GetVehicleUseCase({required this.vehicleRepo});

  Future<Either<ApiException,List<VehicleItem>>>call(Map<String, dynamic> map)async{
    print("GetVehicleUseCase ${map}");
    final result = await vehicleRepo.getVehicle(map);
    return result.fold((l) {
      return Left(ApiException(message: l.message));
    }, (r) {
      if(r.data.list.isEmpty){
        return Left(ApiException(message: "no data"));
      }
      else {
        final list = r.data.list.map((e) {
          return VehicleItem(name: e.name, model: e.model, color: e.color, number: e.number,id: e.id);
        },).toList();
        return Right(list);
      }
    },);
  }
}