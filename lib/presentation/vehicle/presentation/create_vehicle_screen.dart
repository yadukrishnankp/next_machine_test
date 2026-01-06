import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';
import 'package:next_machine_test/presentation/vehicle/bloc/create_vehicle_bloc.dart';
import 'package:next_machine_test/presentation/vehicle/bloc/vehicle_bloc.dart';
import 'package:next_machine_test/presentation/vehicle/event/create_vehicle_event.dart';
import 'package:next_machine_test/presentation/vehicle/event/vehicle_event.dart';
import 'package:next_machine_test/presentation/vehicle/state/create_vehicle_state.dart';
import 'package:next_machine_test/shared/app_toast.dart';
import 'package:next_machine_test/shared/loading_dialog.dart';

import '../../../core/di/injection_container.dart';

class CreateVehiclePage extends StatefulWidget {
  const CreateVehiclePage({super.key,});

  @override
  State<CreateVehiclePage> createState() => _CreateVehiclePageState();
}

class _CreateVehiclePageState extends State<CreateVehiclePage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _modelController = TextEditingController();
  final _colorController = TextEditingController();
  final _numberController = TextEditingController();

  bool _isFormValid = false;

  void _validateForm() {
    setState(() {
      _isFormValid = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _modelController.dispose();
    _colorController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateVehicleBloc,CreateVehicleState>(
      listener: (context, state) {
        if(state.createVehicle is Loading){
          LoadingDialog.show(context);
        }
        else if(state.createVehicle is Success){
          LoadingDialog.close(context);
          AppToast.showErrorToast("vehicle created", context);
          context.read<VehicleBloc>().add(
            VehicleEvent.fetchVehicles(initial: true),
          );
          Navigator.pop(context);


        }
        else if(state.createVehicle is Failure){
          LoadingDialog.close(context);
          AppToast.showErrorToast((state.createVehicle as Failure).message, context);
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('Create Vehicle'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            onChanged: _validateForm,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildTextField(
                    controller: _nameController,
                    label: 'Vehicle Name',
                    hint: 'Vehicle Name',
                    type: FieldType.name
                  ),
                  const SizedBox(height: 12),

                  _buildTextField(
                    controller: _modelController,
                    type: FieldType.model,
                    label: 'Model',
                    hint: 'Model',
                  ),
                  const SizedBox(height: 12),

                  _buildTextField(
                    controller: _colorController,
                    label: 'Color',
                    hint: 'Color',
                    type: FieldType.color,
                  ),
                  const SizedBox(height: 12),

                  _buildTextField(
                    controller: _numberController,
                    label: 'Vehicle Number',
                    hint: 'Vehicle Number',
                    type: FieldType.number,
                  ),
                  const SizedBox(height: 24),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isFormValid
                          ? () {
                        context.read<CreateVehicleBloc>().add(Save());
                      }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        disabledBackgroundColor: Colors.red.shade200,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text("Continue"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required FieldType type
  }) {
    return TextFormField(
      controller: controller,
      onChanged: (value) {
        switch(type){
          case FieldType.name :
            context.read<CreateVehicleBloc>().add(VehicleNameChanged(value));
          case FieldType.model :
            context.read<CreateVehicleBloc>().add(ModelChanged(value));
          case FieldType.color :
            context.read<CreateVehicleBloc>().add(ColorChanged(value));
          case FieldType.number :
            context.read<CreateVehicleBloc>().add(VehicleNumberChanged(value));
        }
      },
      decoration: InputDecoration(
        labelText: hint,
        counterText: "",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
        return null;
      },
    );
  }

}

enum FieldType{
  name,model,color,number
}
