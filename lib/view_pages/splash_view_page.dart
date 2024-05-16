import 'package:east_buitenzorg_auto/controllers/splash_page_controller.dart';
import 'package:east_buitenzorg_auto/services/local/constant_variables.dart';
import 'package:flutter/material.dart';

class SplashViewPage extends StatelessWidget {
  final SplashPageController controller;

  const SplashViewPage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "${ConstantVariables.imgPath}/splash-bg.jpg",
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
          controller.activeWidget,
        ],
      ),
    );
  }
}