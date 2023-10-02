import 'package:east_buitenzorg_auto/controllers/splash_page_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'East Buitenzorg Auto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff8b0000)),
        fontFamily: 'Oswald',
      ),
      home: const SplashPage(),
    );
  }
}
