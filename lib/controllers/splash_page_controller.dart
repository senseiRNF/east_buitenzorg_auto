import 'package:east_buitenzorg_auto/view_pages/splash_fragments/splash_init_view_fragment.dart';
import 'package:east_buitenzorg_auto/view_pages/splash_fragments/splash_intro_view_fragment.dart';
import 'package:east_buitenzorg_auto/view_pages/splash_view_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageController();
}

class SplashPageController extends State<SplashPage> {
  int indexView = 0;

  late StatelessWidget activeWidget;

  @override
  void initState() {
    super.initState();

    loadView();
  }

  loadView() {
    setState(() {
      activeWidget = SplashInitViewFragment(controller: this);
    });

    Future.delayed(
      const Duration(seconds: 3), () => setState(() {
        activeWidget = SplashIntroViewFragment(controller: this);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SplashViewPage(controller: this);
  }
}