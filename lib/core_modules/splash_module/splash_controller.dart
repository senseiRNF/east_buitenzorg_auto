import 'package:east_buitenzorg_auto/controllers/home_page_controller.dart';
import 'package:east_buitenzorg_auto/core_modules/splash_module/splash_path.dart';
import 'package:east_buitenzorg_auto/services/local/constant_variables.dart';
import 'package:east_buitenzorg_auto/services/local/dialog_functions.dart';
import 'package:east_buitenzorg_auto/services/local/local_shared_preferences.dart';
import 'package:east_buitenzorg_auto/services/local/route_functions.dart';
import 'package:east_buitenzorg_auto/core_modules/splash_module/fragments/splash_init_fragment.dart';
import 'package:east_buitenzorg_auto/core_modules/splash_module/fragments/splash_intro_fragment.dart';
import 'package:east_buitenzorg_auto/core_modules/splash_module/splash_view_page.dart';
import 'package:flutter/material.dart';

class SplashController extends State<SplashPath> {
  int indexView = 0;

  late StatelessWidget activeWidget;

  late List<Map> listType;

  @override
  void initState() {
    super.initState();

    setState(() {
      listType = [
        {
          "title": "Sepeda Motor",
          "image": "${ConstantVariables.imgPath}/splash-type-motorcycle.jpg",
          "on_pressed": () => selectType("motorcycle"),
        },
        {
          "title": "Mobil",
          "image": "${ConstantVariables.imgPath}/splash-type-car.jpg",
          "on_pressed": () => selectType("car"),
        },
      ];
    });

    loadView();
  }

  loadView() async {
    setState(() {
      activeWidget = SplashInitViewFragment(controller: this);
    });

    await LocalSharedPreferences.readKey(ConstantVariables.typeKey).then((type) {
      Future.delayed(const Duration(seconds: 5), () => type != null ?
      ReplaceWith(
        context: context,
        target: const HomePage(),
      ).go() :
      setState(() {
        activeWidget = SplashIntroViewFragment(controller: this);
      }));
    });
  }

  selectType(String type) async {
    await LocalSharedPreferences.writeKey(
      ConstantVariables.typeKey,
      type,
    ).then((writeResult) => writeResult == true ?
    ReplaceWith(
      context: context,
      target: const HomePage(),
    ).go() : {
      OkDialog(
        context: context,
        content: "Terjadi kesalahan, silahkan coba lagi",
        headIcon: false,
      ).show()
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashViewPage(controller: this);
  }
}