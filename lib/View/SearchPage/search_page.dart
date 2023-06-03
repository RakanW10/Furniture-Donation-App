import 'package:flutter/material.dart';
import 'package:furniture_donation/Controller/search_page_controller.dart';
import 'package:furniture_donation/View/Components/Item_card.dart';
import 'package:furniture_donation/View/Components/empty_container.dart';
import 'package:furniture_donation/View/Components/main_text_field.dart';
import 'package:furniture_donation/View/ItemPage/item_page.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 80,
        leading: Container(
          margin: const EdgeInsets.only(top: 20, left: 20),
          padding: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: MainTextField(
              controller: controller.searchTextFieldController,
              hintText: 'Search',
              onEditingComplete: () {
                if (controller.searchTextFieldController.text.isNotEmpty) {
                  FocusManager.instance.primaryFocus!.unfocus();
                  controller.search(
                    queryString: controller.searchTextFieldController.text,
                  );
                } else {
                  Get.snackbar('Sorry', 'Please enter a search term',
                      colorText: Colors.white,
                      backgroundColor: AppColors.primary);
                }
              },
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: controller.obx(
              (state) => ListView.builder(
                itemCount: controller.searchResult.length,
                itemBuilder: (context, index) => ItemCard(
                  index: index,
                  imageUrl: controller.searchResult[index].imagesUrls.first,
                  name: controller.searchResult[index].name,
                  condition: controller.searchResult[index].condition,
                  address: controller.searchResult[index].address,
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    await Future.delayed(const Duration(milliseconds: 200));
                    Get.to(
                      () => ItemPage(
                        imagesUrls: controller.searchResult[index].imagesUrls,
                        name: controller.searchResult[index].name,
                        description: controller.searchResult[index].description,
                        condition: controller.searchResult[index].condition,
                        address: controller.searchResult[index].address,
                        ownerName: controller.searchResult[index].ownerName,
                        ownerPhoneNumber:
                            controller.searchResult[index].ownerPhoneNumber,
                      ),
                    );
                  },
                ),
              ),
              onEmpty: const EmptyContainer(
                text: 'No results found',
              ),
              onError: (String? error) {
                if (error != null) {
                  if (error == "first time") {
                    return const EmptyContainer(
                      text: 'Search for items',
                    );
                  }
                }
                return const EmptyContainer(
                  text: 'Something went wrong',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
