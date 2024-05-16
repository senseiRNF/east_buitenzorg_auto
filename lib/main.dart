import 'package:east_buitenzorg_auto/controllers/splash_page_controller.dart';
import 'package:east_buitenzorg_auto/services/local/constant_variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantVariables.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ConstantVariables.primaryColor,
        ),
        fontFamily: 'Oswald',
      ),
      home: const SplashPage(),
    );
  }
}
