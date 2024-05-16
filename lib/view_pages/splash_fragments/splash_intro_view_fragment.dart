import 'package:east_buitenzorg_auto/view_pages/splash_view_page.dart';
import 'package:flutter/material.dart';

class SplashIntroViewFragment extends SplashViewPage {
  const SplashIntroViewFragment({
    super.key,
    required super.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
    );
  }
}