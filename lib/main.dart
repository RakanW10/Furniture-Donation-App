import 'package:flutter/material.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouterApp.mainAuthPage,
      getPages: routerApp,
      theme: appTheme(),
    );
  }
}
