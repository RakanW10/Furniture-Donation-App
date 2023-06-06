import 'package:flutter/material.dart';
import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:furniture_donation/Model/Order/order_model.dart';
import 'package:furniture_donation/const.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController with StateMixin {
  AppUser? user;
  List<OrderModel> ordersList = [];

  Future<void> updateStatusWithAcceptOwner({required OrderModel order}) async {
    try {
      await DatabaseService.updateStatusWithAcceeptOwner(order: order);
    } catch (e) {
      print(e.toString());
    }
    return Future.value(null);
  }

  Future<void> updateStatusWithRejectOwner({required OrderModel order}) async {
    try {
      await DatabaseService.updateStatusWithRejectOwner(order: order);
    } catch (e) {
      Get.snackbar(
        "Sorry",
        e.toString(),
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    }
    return Future.value(null);
  }

  Future<void> updateStatusWithRejectBuyer({required OrderModel order}) async {
    try {
      await DatabaseService.updateStatusWithRejectBuyer(order: order);
    } catch (e) {
      Get.snackbar(
        "Sorry",
        e.toString(),
        colorText: Colors.white,
        backgroundColor: AppColors.primary,
      );
    }
    return Future.value(null);
  }

  Future<void> loadData() async {
    var userData = await appStorage.read('user');
    if (userData != null) {
      user = AppUser.fromJson(json: userData);
    }
    if (user == null) {
      change(ordersList, status: RxStatus.error("User not found"));
      return;
    }

    change(ordersList, status: RxStatus.loading());
    try {
      ordersList = await DatabaseService.getUserOrders(uid: user!.uid);
      if (ordersList.isEmpty) {
        change(ordersList, status: RxStatus.empty());
      } else {
        change(ordersList, status: RxStatus.success());
      }
    } catch (e) {
      change(ordersList, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() async {
    await loadData();
    super.onInit();
  }
}
