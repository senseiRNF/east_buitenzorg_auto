import 'package:east_buitenzorg_auto/view_pages/introduction_view_page.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => IntroductionPageController();
}

class IntroductionPageController extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionViewPage(controller: this);
  }
}