import 'package:east_buitenzorg_auto/controllers/splash_page_controller.dart';
import 'package:east_buitenzorg_auto/miscellaneous/custom_textstyles.dart';
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'EAST BUITENZORG AUTO',
              style: CustomTextStyles.titleContent.copyWith(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}