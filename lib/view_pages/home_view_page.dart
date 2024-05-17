import 'package:east_buitenzorg_auto/controllers/home_page_controller.dart';
import 'package:east_buitenzorg_auto/services/local/constant_variables.dart';
import 'package:flutter/material.dart';

class HomeViewPage extends StatelessWidget {
  final HomePageController controller;

  const HomeViewPage({
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
                    controller.typeSelected != null && controller.typeSelected == "car"
                        ? "${ConstantVariables.imgPath}/home-bg-car.jpg"
                        : "${ConstantVariables.imgPath}/home-bg-motorcycle.jpg",
                  ),
                  fit: BoxFit.fitWidth,
                  opacity: 0.8,
                )
            ),
          ),
        ],
      ),
    );
  }
}