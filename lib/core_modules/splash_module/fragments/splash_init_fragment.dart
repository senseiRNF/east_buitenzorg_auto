import 'package:east_buitenzorg_auto/core_modules/splash_module/splash_view_page.dart';
import 'package:flutter/material.dart';

class SplashInitViewFragment extends SplashViewPage {
  const SplashInitViewFragment({
    super.key,
    required super.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            'EAST BUITENZORG AUTO',
            style: TextStyle(
              color: Colors.white.withOpacity(0.95),
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}