import 'package:flutter/material.dart';
import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Controller/main_controller.dart';

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
  late TextEditingController itemAddressController;
  int categoryIndex = 0;

  void pickImages() async {
    try {
      int i = 1;
      final image = await ImagePicker().pickMultiImage();
      for (var image in image) {
        if (i == 5) break;
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

  summit() async {
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
      Item tempItem = Item(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: itemNameController.text,
        description: itemDescriptionController.text,
        condition: itemConditionController.text,
        address: itemAddressController.text,
        category: category,
        ownerId: appStorage.read('user')!['uid'],
        ownerName: appStorage.read('user')!['name'],
        ownerPhoneNumber: appStorage.read('user')!['phoneNumber'],
        imagesUrls: images.map((e) => e!.path).toList(),
        isAvailable: true,
      );
      await DatabaseService.addItem(item: tempItem);
      Get.find<MainController>().allItems.add(tempItem);
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
    itemAddressController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    itemNameController.dispose();
    itemDescriptionController.dispose();
    itemConditionController.dispose();
    itemAddressController.dispose();
    super.onClose();
  }
}
