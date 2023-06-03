import 'package:flutter/material.dart';
import 'package:furniture_donation/View/Components/main_btn.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    super.key,
    required this.imagesUrls,
    required this.name,
    required this.description,
    required this.condition,
    required this.address,
    required this.ownerName,
    required this.ownerPhoneNumber,
  });
  final List<String> imagesUrls;
  final String name;
  final String description;
  final String condition;
  final String address;
  final String ownerName;
  final String ownerPhoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(imagesUrls[0]),
                  fit: BoxFit.cover,
                ),
              ),
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
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
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
                  "  $condition",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text("Address",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                const SizedBox(height: 4),
                Text(
                  "  $address",
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
                  "  $ownerName",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text("  $ownerPhoneNumber",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: MainBTN(
                title: "Interest",
                onPressed: () {
                  // TODO: Add interest functionality
                },
                isFilled: false),
          ),
        ],
      )),
    );
  }
}
