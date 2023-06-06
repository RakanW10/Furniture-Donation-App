import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_donation/API/database.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Model/Order/order_model.dart';
import 'package:furniture_donation/View/Components/main_btn.dart';
import 'package:furniture_donation/const.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    super.key,
    required this.item,
    required this.isMyItem,
  });
  final Item item;
  final bool isMyItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider(
                carouselController: CarouselController(),
                options: CarouselOptions(
                  height: 250.0,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                ),
                items: item.imagesUrls
                    .map(
                      (imageURL) => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(imageURL),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Condition",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "  ${item.condition}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "  ${item.address}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text("Owner",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                const SizedBox(height: 4),
                Text(
                  "  ${item.ownerName}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "  ${isMyItem ? item.ownerPhoneNumber : "05x xxx xxxx"}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: isMyItem
                ? MainBTN(
                    title: "Delete",
                    onPressed: () {
                      try {
                        DatabaseService.deleteItem(item: item);
                      } catch (e) {
                        Get.snackbar(
                          "Sorry",
                          e.toString(),
                          backgroundColor: AppColors.primary,
                          colorText: Colors.white,
                        );
                      }
                      Get.back();
                    },
                    isFilled: false,
                  )
                : MainBTN(
                    title: "Interest",
                    onPressed: () async {
                      Map<String, dynamic>? buyerData = appStorage.read("user");
                      if (buyerData == null) {
                        Get.snackbar(
                          "Sorry",
                          "You must login first",
                          backgroundColor: AppColors.primary,
                          colorText: Colors.white,
                        );
                      } else {
                        AppUser buyer = AppUser.fromJson(json: buyerData);
                        OrderStatus status = OrderStatus.pending;
                        OrderModel order = OrderModel(
                          id: DateTime.now().toString(),
                          ownerUid: item.ownerId,
                          ownerName: item.ownerName,
                          ownerPhoneNumber: item.ownerPhoneNumber,
                          buyerId: buyer.uid,
                          buyerName: buyer.name,
                          buyerPhoneNumber: buyer.phoneNumber,
                          itemUid: item.id,
                          itemName: item.name,
                          itemImageUrl: item.imagesUrls[0],
                          status: status,
                        );

                        await DatabaseService.putNewOrder(order: order);
                        Get.back();
                        Get.snackbar(
                          "Success",
                          "Your request has been sent",
                          backgroundColor: AppColors.primary,
                          colorText: Colors.white,
                        );
                      }
                    },
                    isFilled: false,
                  ),
          ),
        ],
      )),
    );
  }
}
