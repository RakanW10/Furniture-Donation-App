import 'package:flutter/material.dart';
import 'package:furniture_donation/Model/AppUser/app_user.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/View/Components/Item_card.dart';
import 'package:furniture_donation/View/Components/logo_big.dart';
import 'package:furniture_donation/const.dart';
import 'package:get/get.dart';

class Outdoor extends StatelessWidget {
  const Outdoor({
    super.key,
    required this.myItems,
    required this.isLoading,
  });
  final List<Item> myItems;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : myItems.isEmpty
            ? const Column(
                children: [
                  LogoBig(),
                  Text(
                    'No Items Found',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            : ListView.builder(
                itemCount: myItems.length,
                itemBuilder: (context, index) => ItemCard(
                  index: index,
                  imageUrl: myItems[index].imagesUrls[0],
                  name: myItems[index].name,
                  condition: myItems[index].condition,
                  address: myItems[index].address,
                  onTap: () async {
                    bool isMyItem = false;
                    var userData = await appStorage.read("user");
                    if (userData == null) {
                      isMyItem = false;
                    } else {
                      AppUser user = AppUser.fromJson(json: userData);
                      if (user.uid == myItems[index].ownerId) {
                        isMyItem = true;
                      }
                    }
                    Get.toNamed(
                      RouterApp.itemPage,
                      arguments: {"item": myItems[index], "isMyItem": isMyItem},
                    );
                  },
                ),
              );
  }
}
