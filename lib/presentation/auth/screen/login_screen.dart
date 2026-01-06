
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/domain/usecases/login_usecase.dart';
import 'package:next_machine_test/presentation/auth/screen/otp_screen.dart';
import 'package:next_machine_test/presentation/auth/bloc/auth_bloc.dart';
import 'package:next_machine_test/presentation/auth/event/auth_event.dart';

import '../../../core/di/injection_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _phoneController = TextEditingController();

  bool isPhoneValid = false;
  bool showOtpField = false;


  void validatePhone(String value) {
    setState(() {
      isPhoneValid = value.length == 10;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                "Login",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 40),

              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                maxLength: 10,
                onChanged: validatePhone,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone, color: Colors.red),
                  labelText: "Phone Number",
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
                  onPressed: isPhoneValid
                      ? () {
                    sl.get<AuthBloc>().add(AuthEvent.setPhoneNumber(phoneNumber: _phoneController.text));
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    BlocProvider.value(value: sl<AuthBloc>(),child: OtpScreen())));
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

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
