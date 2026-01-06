import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_machine_test/core/di/injection_container.dart';
import 'package:next_machine_test/presentation/auth/bloc/auth_bloc.dart';

import 'presentation/auth/screen/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await inIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider.value(value: sl<AuthBloc>(),child: LoginScreen(),)
      // home: MultiBlocProvider(providers: [
      //   BlocProvider(create: (context) => AuthBloc(loginUseCase: sl()),)
      // ]
      //     , child: LoginScreen()),
    );
  }
}


