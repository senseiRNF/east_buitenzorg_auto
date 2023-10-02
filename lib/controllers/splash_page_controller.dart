import 'package:east_buitenzorg_auto/controllers/introduction_page_controller.dart';
import 'package:east_buitenzorg_auto/miscellaneous/custom_routes.dart';
import 'package:east_buitenzorg_auto/view_pages/splash_view_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageController();
}

class SplashPageController extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3), () => ReplaceWith(context: context, target: const IntroductionPage()).go(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplashViewPage(controller: this);
  }
}