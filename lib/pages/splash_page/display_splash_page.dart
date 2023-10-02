import 'package:east_buitenzorg_auto/pages/splash_page/lv_splash_page.dart';
import 'package:east_buitenzorg_auto/pages/splash_page/pv_splash_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext orientationContext, Orientation deviceOrientation) {
            switch(deviceOrientation) {
              case Orientation.portrait:
                return const PortraitSplashPage();
              case Orientation.landscape:
                return const LandscapeSplashPage();
              default:
                return const PortraitSplashPage();
            }
          },
        ),
      ),
    );
  }
}