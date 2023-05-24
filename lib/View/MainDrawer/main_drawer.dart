import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:furniture_donation/Controller/main_ontroller.dart';
import 'package:furniture_donation/View/SidePage/side_page.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class MainDrawer extends GetView<MainController> {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const SidePage(),
      mainScreen:
          GetBuilder<MainController>(builder: (_) => controller.currentScreen),
      angle: 0.0,
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          spreadRadius: 4,
          offset: Offset(0.0, 0.0),
        ),
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          spreadRadius: 0.0,
          offset: Offset(-25, 0.0),
        ),
        BoxShadow(
          color: AppColors.primary,
          blurRadius: 1,
          spreadRadius: 0.0,
          offset: Offset(-15, 0.0),
        ),
      ],
      menuBackgroundColor: AppColors.primary,
    );
  }
}
