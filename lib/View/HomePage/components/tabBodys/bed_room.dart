import 'package:flutter/material.dart';
import 'package:furniture_donation/Model/Item/item_model.dart';
import 'package:furniture_donation/View/Components/Item_card.dart';
import 'package:furniture_donation/View/Components/logo_big.dart';
import 'package:furniture_donation/View/ItemPage/item_page.dart';
import 'package:get/get.dart';

class BedRoom extends StatelessWidget {
  const BedRoom({
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
                  onTap: () {
                    Get.to(
                      () => ItemPage(
                          imagesUrls: myItems[index].imagesUrls,
                          name: myItems[index].name,
                          description: myItems[index].description,
                          condition: myItems[index].condition,
                          address: myItems[index].address,
                          ownerName: myItems[index].ownerName,
                          ownerPhoneNumber: myItems[index].ownerPhoneNumber),
                    );
                  },
                ),
              );
  }
}
