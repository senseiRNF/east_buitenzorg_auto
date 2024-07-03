import 'package:east_buitenzorg_auto/core_modules/splash_module/splash_path.dart';
import 'package:east_buitenzorg_auto/services/local/constant_variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EastBuitenzorgAuto());
}

class EastBuitenzorgAuto extends StatelessWidget {
  const EastBuitenzorgAuto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantVariables.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ConstantVariables.primaryColor,
        ),
        fontFamily: 'Rubik',
      ),
      home: const SplashPath(),
    );
  }
}
