import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:furniture_donation/Controller/main_controller.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/View/Components/category_icons.dart';
import 'package:furniture_donation/View/HomePage/components/tabBodys/bed_room.dart';
import 'package:furniture_donation/View/HomePage/components/tabBodys/kitchen.dart';
import 'package:furniture_donation/View/HomePage/components/tabBodys/living_room.dart';
import 'package:furniture_donation/View/HomePage/components/tabBodys/outdoor.dart';
import 'package:furniture_donation/View/HomePage/components/tab_container.dart';
import 'package:furniture_donation/const.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class HomePage extends GetView<MainController> {
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
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () => Get.toNamed(RouterApp.searchPage),
              icon: const Icon(
                Icons.search,
                size: 24,
              ),
            ),
          ),
        ],
        actionsIconTheme: const IconThemeData(size: 45),
      ),
      body: Column(
        children: [
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Obx(
              () => TabBar(
                controller: controller.tabController,
                tabs: [
                  TabContainer(
                    iconData: CategoryIcons.couch,
                    index: 0,
                    selectedTabIndex: controller.selectedTabIndex.value,
                  ),
                  TabContainer(
                    iconData: CategoryIcons.bedSvgrepoCom_1,
                    index: 1,
                    selectedTabIndex: controller.selectedTabIndex.value,
                  ),
                  TabContainer(
                    iconData: CategoryIcons.kitchenRoomSvgrepoCom,
                    index: 2,
                    selectedTabIndex: controller.selectedTabIndex.value,
                  ),
                  TabContainer(
                    iconData: CategoryIcons.terracIcon,
                    index: 3,
                    selectedTabIndex: controller.selectedTabIndex.value,
                  ),
                ],
                onTap: (index) => controller.setTabIndex(index),
                isScrollable: true,
                indicatorColor: AppColors.primary,
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: GetBuilder<MainController>(
              builder: (_) => TabBarView(
                controller: controller.tabController,
                children: [
                  LivingRoom(
                    myItems: controller.allItems
                        .where((element) =>
                            element.category == "Living Room" &&
                            element.isAvailable == true)
                        .toList(),
                    isLoading: controller.isLoading.value,
                  ),
                  BedRoom(
                    myItems: controller.allItems
                        .where((element) =>
                            element.category == "Bed Room" &&
                            element.isAvailable == true)
                        .toList(),
                    isLoading: controller.isLoading.value,
                  ),
                  Kitchen(
                    myItems: controller.allItems
                        .where((element) =>
                            element.category == "Kitchen" &&
                            element.isAvailable == true)
                        .toList(),
                    isLoading: controller.isLoading.value,
                  ),
                  Outdoor(
                    myItems: controller.allItems
                        .where((element) =>
                            element.category == "Outdoor" &&
                            element.isAvailable == true)
                        .toList(),
                    isLoading: controller.isLoading.value,
                  ),
                ],
              ),
            ),
          ),
        ],
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
