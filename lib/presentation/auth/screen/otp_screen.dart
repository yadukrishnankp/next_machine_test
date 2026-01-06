import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/core/network/api_fetch_state.dart';
import 'package:next_machine_test/presentation/auth/bloc/auth_bloc.dart';
import 'package:next_machine_test/presentation/auth/event/auth_event.dart';
import 'package:next_machine_test/presentation/auth/state/auth_state.dart';
import 'package:next_machine_test/presentation/vehicle/bloc/vehicle_bloc.dart';
import 'package:next_machine_test/shared/app_toast.dart';
import 'package:next_machine_test/shared/loading_dialog.dart';
import 'package:next_machine_test/presentation/vehicle/presentation/vehicle_list_screen.dart';

import '../../../core/di/injection_container.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpController = TextEditingController();
  bool isOtpValid = false;

  void validateOtp(String value) {
    setState(() {
      isOtpValid = value.length == 6;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context, state) {
        if(state.login is Loading){
          LoadingDialog.show(context);
        }
        else if(state.login is Failure){
          AppToast.showErrorToast((state.login as Failure).message, context);
          if(mounted)
            LoadingDialog.close(context);

        }
        else if(state.login is Success){
          if(mounted)
            LoadingDialog.close(context);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
            BlocProvider(create: (context) => VehicleBloc(getVehicleUseCase: sl(),deleteVehicleUsecase: sl()),child: VehicleListScreen(),),));
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),

                  Icon(
                    Icons.directions_car_filled,
                    size: 90,
                    color: Colors.red,
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Verify OTP",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  BlocBuilder<AuthBloc,AuthState>(builder: (context, state) => Text(
                    "otp send to ${state.phoneNumber}",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),

                  const SizedBox(height: 40),
                  TextField(
                    controller: _otpController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    onChanged: validateOtp,
                    decoration: InputDecoration(
                      prefixIcon:
                      const Icon(Icons.lock_outline, color: Colors.red),
                      labelText: "Enter OTP",
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isOtpValid
                          ? () {
                        sl.get<AuthBloc>().add(AuthEvent.login());
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
                      child: const Text("Verify"),
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
}
