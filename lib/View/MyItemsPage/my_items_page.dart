import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:furniture_donation/Controller/my_items_controller.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/View/Components/Item_card.dart';
import 'package:furniture_donation/View/Components/empty_container.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class MyItemsPage extends GetView<MyItemsController> {
  const MyItemsPage({super.key});

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
      body: controller.user == null
          ? const EmptyContainer(text: "You Need to Sgin in")
          : RefreshIndicator(
              onRefresh: () async {
                controller.onRefresh();
              },
              color: AppColors.primary,
              child: controller.obx(
                (state) => ListView.builder(
                  itemCount: controller.myItems.length,
                  itemBuilder: (context, index) => ItemCard(
                    index: index,
                    imageUrl: controller.myItems[index].imagesUrls[0],
                    name: controller.myItems[index].name,
                    condition: controller.myItems[index].condition,
                    address: controller.myItems[index].address,
                    onTap: () => Get.toNamed(
                      RouterApp.itemPage,
                      arguments: {
                        "item": controller.myItems[index],
                        "isMyItem": true,
                      },
                    ),
                  ),
                ),
                onEmpty: const EmptyContainer(text: "No items found"),
                onLoading: const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.primary,
                )),
              ),
            ),
    );
  }
}
