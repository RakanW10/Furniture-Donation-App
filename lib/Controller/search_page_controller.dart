import 'package:flutter/material.dart';
import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController with StateMixin {
  late TextEditingController searchTextFieldController;
  List<Item> searchResult = [];

  search({required String queryString}) async {
    change(searchResult, status: RxStatus.loading());
    await DatabaseService.searchItems(query: queryString).then((value) {
      searchResult = value;
    });
    if (searchResult.isEmpty) {
      change(searchResult, status: RxStatus.empty());
    } else {
      change(searchResult, status: RxStatus.success());
    }
  }

  @override
  void onInit() {
    change(searchResult, status: RxStatus.error("first time"));
    searchTextFieldController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    searchTextFieldController.dispose();
    super.onClose();
  }
}
