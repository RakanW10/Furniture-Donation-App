import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture_donation/Controller/add_item_controller.dart';
import 'package:furniture_donation/View/AddItemPage/components/image_uploader.dart';
import 'package:furniture_donation/View/Components/category_icons.dart';
import 'package:furniture_donation/View/Components/main_BTN.dart';
import 'package:furniture_donation/View/Components/main_text_field.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AddItemPage extends GetView<AddItemController> {
  const AddItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 80,
        leading: Container(
          margin: const EdgeInsets.only(top: 20, left: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const ImageUploader(),
          const SizedBox(height: 16),
          const Text(
            'Name',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          MainTextField(
            controller: controller.itemNameController,
            hintText: 'Enter the name',
          ),
          const SizedBox(height: 16),
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          MainTextField(
            controller: controller.itemDescriptionController,
            hintText: 'Enter the description',
            maxLines: 6,
            maxLength: 255,
          ),
          const SizedBox(height: 8),
          const Text(
            'Condition',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          MainTextField(
            controller: controller.itemConditionController,
            hintText: 'Enter the condition',
          ),
          const SizedBox(height: 16),
          const Text(
            'Category',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            child: ToggleSwitch(
              minHeight: 40,
              activeFgColor: Colors.white,
              activeBgColor: [AppColors.primary.withOpacity(0.5)],
              inactiveBgColor: const Color.fromARGB(255, 211, 209, 209),
              inactiveFgColor: Colors.white,
              totalSwitches: 4,
              icons: const [
                CategoryIcons.couch,
                CategoryIcons.bedSvgrepoCom_1,
                CategoryIcons.kitchenRoomSvgrepoCom,
                CategoryIcons.terracIcon
              ],
              iconSize: 24,
              onToggle: (index) {
                controller.setCategoryIndex(index!);
              },
            ),
          ),
          const SizedBox(height: 16),
          MainBTN(
            title: "Donate",
            onPressed: controller.summit,
            isFilled: false,
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
