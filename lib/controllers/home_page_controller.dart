import 'package:east_buitenzorg_auto/services/local/constant_variables.dart';
import 'package:east_buitenzorg_auto/services/local/local_shared_preferences.dart';
import 'package:east_buitenzorg_auto/view_pages/home_view_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageController();
}

class HomePageController extends State<HomePage> {
  String? typeSelected;

  @override
  void initState() {
    super.initState();

    checkType();
  }

  checkType() async {
    await LocalSharedPreferences.readKey(ConstantVariables.typeKey).then((type) {
      setState(() {
        typeSelected = type;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeViewPage(controller: this);
  }
}