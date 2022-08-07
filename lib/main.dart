import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:login_and_register/modules/login/Login_Screen.dart';
import 'package:login_and_register/shared/blocobserver/bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
        ()  {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key,}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen() ,
    );
  }
}
