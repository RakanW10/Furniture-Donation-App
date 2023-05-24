import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:furniture_donation/Controller/my_items_controller.dart';
import 'package:furniture_donation/Controller/orders_controller.dart';
import 'package:furniture_donation/Router/binding_classes.dart';
import 'package:furniture_donation/View/AboutUsPage/about_us.dart';
import 'package:furniture_donation/View/HomePage/home_page.dart';
import 'package:furniture_donation/View/MyItemsPage/my_items_page.dart';
import 'package:furniture_donation/View/OrdersPage/orders_page.dart';
import 'package:get/get.dart';

const List<Widget> screens = [
  HomePage(),
  MyItemsPage(),
  OrdersPage(),
  AboutUsPage(),
];

class MainController extends GetxController {
  Widget currentScreen = const HomePage();

  void changeScreenTo({required BuildContext context, required int pageIndex}) {
    Get.delete<MyItemsController>();
    Get.delete<OrdersController>();
    switch (pageIndex) {
      case 0:
        currentScreen = screens[pageIndex];
        break;
      case 1:
        MyItemsBindings().dependencies();
        currentScreen = screens[pageIndex];
        break;
      case 2:
        OrdersBindings().dependencies();
        currentScreen = screens[pageIndex];
        break;
      case 3:
        currentScreen = screens[pageIndex];
        break;
    }
    update();
    ZoomDrawer.of(context)!.close();
  }
}
