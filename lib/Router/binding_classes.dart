import 'package:flutter/material.dart';
import 'package:furniture_donation/Controller/add_item_controller.dart';
import 'package:furniture_donation/Controller/main_controller.dart';
import 'package:furniture_donation/Controller/my_items_controller.dart';
import 'package:furniture_donation/Controller/orders_controller.dart';
import 'package:furniture_donation/Controller/search_page_controller.dart';
import 'package:furniture_donation/Controller/sign_in_controller.dart';
import 'package:furniture_donation/Controller/sign_up_controller.dart';
import 'package:get/get.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpController());
  }
}

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}

class MyItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MyItemsController());
  }
}

class OrdersBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(OrdersController());
  }
}

class AddItemBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AddItemController());
  }
}

class SearchBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SearchPageController());
  }
}
