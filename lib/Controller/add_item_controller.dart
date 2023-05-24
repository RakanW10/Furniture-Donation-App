import 'package:flutter/material.dart';
import 'package:furniture_donation/API/database.dart';

import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/const.dart';

import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddItemController extends GetxController {
  RxList<File?> images = <File>[].obs;
  late TextEditingController itemNameController;
  late TextEditingController itemDescriptionController;
  late TextEditingController itemConditionController;
  int categoryIndex = 0;

  void pickImages() async {
    try {
      final image = await ImagePicker().pickMultiImage();
      for (var image in image) {
        images.add(File(image.path));
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Please try again',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.primary,
        colorText: Colors.white,
      );
    }
  }

  void removeImage(int index) {
    images.removeAt(index);
  }

  void setCategoryIndex(int index) {
    categoryIndex = index;
  }

  summit() {
    if (itemNameController.text.isNotEmpty &&
        itemDescriptionController.text.isNotEmpty &&
        itemConditionController.text.isNotEmpty &&
        images.isNotEmpty) {
      late String category;
      switch (categoryIndex) {
        case 0:
          category = 'Living Room';
          break;
        case 1:
          category = 'Bed Room';
          break;
        case 2:
          category = 'Kitchen';
          break;
        case 3:
          category = 'Outdoor';
          break;
      }

      DatabaseService.addItem(
        item: Item(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          name: itemNameController.text,
          description: itemDescriptionController.text,
          condition: itemConditionController.text,
          category: category,
          ownerId: appStorage.read('user')!['uid'],
          imagesUrls: images.map((e) => e!.path).toList(),
          isAvailable: true,
        ),
      );
      Get.snackbar(
        'Success',
        'Item added successfully',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.primary,
        colorText: Colors.white,
      );
      Get.back();
    } else {
      Get.snackbar(
        'Error',
        'Please fill all fields',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.primary,
        colorText: Colors.white,
      );
    }
  }

  @override
  void onInit() {
    itemNameController = TextEditingController();
    itemDescriptionController = TextEditingController();
    itemConditionController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    itemNameController.dispose();
    itemDescriptionController.dispose();
    itemConditionController.dispose();
    super.onClose();
  }
}
