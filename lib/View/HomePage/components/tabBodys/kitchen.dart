import 'package:flutter/material.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/Router/router_name.dart';
import 'package:furniture_donation/View/Components/Item_card.dart';
import 'package:furniture_donation/View/Components/logo_big.dart';
import 'package:furniture_donation/View/ItemPage/item_page.dart';
import 'package:get/get.dart';

class Kitchen extends StatelessWidget {
  const Kitchen({
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
                  onTap: () => Get.toNamed(
                    RouterApp.itemPage,
                    arguments: {"item": myItems[index]},
                  ),
                ),
              );
  }
}
