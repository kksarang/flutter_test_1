import 'package:assignment/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF2C8AE3),
        primaryColorDark: const Color(0xFF005CA3),
        hintColor: Colors.grey[400],
      ),
      home: const LoginScreen(),
    );
  }
}
