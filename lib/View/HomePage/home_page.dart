import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/const.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 80,
        leading: Container(
          margin: const EdgeInsets.only(top: 20, left: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
            icon: const Icon(
              Icons.menu,
              size: 24,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var userData = await appStorage.read("user");
          if (userData == null) {
            Get.toNamed(RouterApp.mainAuthPage);
          } else {
            Get.toNamed(RouterApp.addItemPage);
          }
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add_circle_outline_rounded,
          color: AppColors.primary,
          size: 40,
        ),
      ),
    );
  }
}
