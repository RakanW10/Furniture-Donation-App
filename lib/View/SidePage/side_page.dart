import 'package:flutter/material.dart';
import 'package:furniture_donation/Controller/main_controller.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/const.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class SidePage extends GetView<MainController> {
  const SidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            GetBuilder<MainController>(
              builder: (_) => controller.user == null
                  ? Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            color: AppColors.primary,
                          ),
                        ),
                        const Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(RouterApp.mainAuthPage);
                            },
                            child: const Text(
                              "Sgin in/Sign up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          controller.user!.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
            ),
            const SizedBox(height: 16),
            ...[
              {
                "title": "Home",
                "onTap": () =>
                    controller.changeScreenTo(context: context, pageIndex: 0),
              },
              {
                "title": "My Items",
                "onTap": () =>
                    controller.changeScreenTo(context: context, pageIndex: 1),
              },
              {
                "title": "Ordars",
                "onTap": () =>
                    controller.changeScreenTo(context: context, pageIndex: 2),
              },
              {
                "title": "About Us",
                "onTap": () =>
                    controller.changeScreenTo(context: context, pageIndex: 3),
              },
            ]
                .map(
                  (item) => InkWell(
                    onTap: item["onTap"] as void Function()?,
                    child: SizedBox(
                      height: 40,
                      width: Get.width,
                      child: Text(
                        item["title"] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            const Spacer(
              flex: 2,
            ),
            GetBuilder<MainController>(
              builder: (_) => controller.user != null
                  ? ListTile(
                      onTap: () {
                        appStorage.remove("user");
                        Get.offAllNamed(RouterApp.mainDrawer);
                        Get.snackbar(
                          "Signed out",
                          "You are signed out successfully.",
                          backgroundColor: AppColors.primary,
                          colorText: Colors.white,
                        );
                      },
                      title: Text(
                        "Sign Out",
                        style: TextStyle(
                          color: Colors.red[400],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Icon(
                        Icons.logout,
                        color: Colors.red[400],
                        size: 30,
                      ),
                    )
                  : const SizedBox(
                      height: 55,
                    ),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
