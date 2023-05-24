import 'package:flutter/material.dart';
import 'package:furniture_donation/Controller/main_controller.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(width: 16),
                Text(
                  "User Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
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
            true
                ? InkWell(
                    onTap: () {
                      //TODO: Sign Out
                    },
                    child: ListTile(
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
                    ),
                  )
                : SizedBox(
                    height: 55,
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
