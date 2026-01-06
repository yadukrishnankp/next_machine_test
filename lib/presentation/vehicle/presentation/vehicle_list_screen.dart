
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';
import 'package:next_machine_test/domain/usecases/get_vehicle_usecase.dart';
import 'package:next_machine_test/presentation/vehicle/bloc/create_vehicle_bloc.dart';
import 'package:next_machine_test/presentation/vehicle/bloc/vehicle_bloc.dart';
import 'package:next_machine_test/presentation/vehicle/event/vehicle_event.dart';
import 'package:next_machine_test/presentation/vehicle/presentation/create_vehicle_screen.dart';
import 'package:next_machine_test/presentation/vehicle/presentation/vehicle_card.dart';
import 'package:next_machine_test/presentation/vehicle/state/vehicle_state.dart';
import 'package:next_machine_test/shared/app_toast.dart';
import 'package:next_machine_test/shared/loading_dialog.dart';

import '../../../core/di/injection_container.dart';
import '../../../domain/entity/vehicle_item.dart';




class VehicleListScreen extends StatefulWidget {
  const VehicleListScreen({super.key});

  @override
  State<VehicleListScreen> createState() => _VehicleListScreenState();
}

class _VehicleListScreenState extends State<VehicleListScreen> {

  final ScrollController _scrollController = ScrollController();

  final int pageSize = 6;
  int page = 1;
  bool isLoading = false;
  bool hasMore = true;

  final List<VehicleItem> vehicles = [];

  @override
  void initState() {
    super.initState();
          context.read<VehicleBloc>().add(VehicleEvent.fetchVehicles(initial: true));


    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent * 0.8 && ( context.read<VehicleBloc>().state.fetching==false)
        ) {
        context.read<VehicleBloc>().add(VehicleEvent.fetchVehicles());
      }
    });
  }



  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VehicleBloc,VehicleState>(
      listenWhen: (previous, current) => current.deleteVehicle != previous.deleteVehicle,
      listener: (context, state) {
        state.deleteVehicle.when(initial: () {

        }, loading: () {
          LoadingDialog.show(context);
        }, success: (data) {
          LoadingDialog.close(context);
          AppToast.showErrorToast("Deleted Suucessfully", context);
          context.read<VehicleBloc>().add(FetchVehiclesEvent(initial: true));

        }, failure: (message) {
          LoadingDialog.close(context);
          AppToast.showErrorToast(message, context);
        },);
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final vehicleBloc = context.read<VehicleBloc>();
            Navigator.push(context, MaterialPageRoute(builder: (context) => MultiBlocProvider(providers: [
              BlocProvider.value(value: vehicleBloc),
              BlocProvider(create: (context) => CreateVehicleBloc(createVehicleUseCase: sl()),)
            ], child: CreateVehiclePage(
            )),));
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("My Vehicles"),
          backgroundColor: Colors.red,
        ),
        body: BlocBuilder<VehicleBloc,VehicleState>(builder: (context, state) {
          if(state.getVehicle is Success ){
           final  list = (state.getVehicle as Success).data as List<VehicleItem>;
           return ListView.builder(
             controller: _scrollController,
             padding: const EdgeInsets.all(16),
             itemCount: state.getVehicle is Success?list.length:0,
             itemBuilder: (context, index) {
               if (state.getVehicle is Success && state.fetching && index==list.length-1) {
                 return Column(
                   children: [
                     VehicleCard(vehicleI: list[index]),
                     Padding(
                       padding: EdgeInsets.all(16),
                       child: Center(
                         child: CircularProgressIndicator(color: Colors.red),
                       ),
                     )
                   ],
                 );
               } else if(state.getVehicle is Success) {
                 return     VehicleCard(vehicleI: list[index]);
             }
             },
           );
          }
          else if(state.getVehicle is Loading){
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: CircularProgressIndicator(color: Colors.red),
              ),
            );
          }
          return Container(
          );
        },),
      ),
    );
  }


}
