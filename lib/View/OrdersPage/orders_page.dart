import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:furniture_donation/Controller/orders_controller.dart';
import 'package:furniture_donation/View/Components/empty_container.dart';
import 'package:furniture_donation/View/OrdersPage/components/order_card.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class OrdersPage extends GetView<OrdersController> {
  const OrdersPage({super.key});

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
      body: controller.obx(
        (state) => ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          itemCount: controller.ordersList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: OrderCard(
                imageUrl: controller.ordersList[index].itemImageUrl,
                name: controller.ordersList[index].itemName,
                ownerName: controller.ordersList[index].ownerName,
                ownerPhone: controller.ordersList[index].ownerPhoneNumber,
                buyerName: controller.ordersList[index].buyerName,
                buyerPhone: controller.ordersList[index].buyerPhoneNumber,
                orderStatus: controller.ordersList[index].status,
                isIncomingOrder:
                    controller.user!.uid == controller.ordersList[index].buyerId
                        ? false
                        : true,
                onAccept: () async {
                  if (controller.user!.uid ==
                      controller.ordersList[index].buyerId) {
                    Get.snackbar(
                      "Pending",
                      "Wait for the owner to accept",
                      colorText: Colors.white,
                      backgroundColor: AppColors.primary,
                    );
                  } else {
                    await controller.updateStatusWithAcceptOwner(
                      order: controller.ordersList[index],
                    );
                  }
                },
                onReject: () async {
                  if (controller.user!.uid ==
                      controller.ordersList[index].buyerId) {
                    // Cancel the order
                    await controller.updateStatusWithRejectBuyer(
                      order: controller.ordersList[index],
                    );
                  } else {
                    // Reject the order
                    await controller.updateStatusWithRejectOwner(
                      order: controller.ordersList[index],
                    );
                  }
                },
              ),
            );
          },
        ),
        onEmpty: const EmptyContainer(text: "There are no orders yet"),
        onLoading: const Center(
          child: CircularProgressIndicator(
            color: AppColors.primary,
          ),
        ),
        onError: (error) {
          if (error == "User not found") {
            return const EmptyContainer(text: "You need to signin first");
          } else {
            print(error);
            return const EmptyContainer(text: "Something went wrong");
          }
        },
      ),
    );
  }
}
