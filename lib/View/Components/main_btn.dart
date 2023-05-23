import 'package:flutter/material.dart';
import 'package:furniture_donation/style.dart';
import 'package:get/get.dart';

class MainBTN extends StatelessWidget {
  const MainBTN({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isFilled,
  });

  final String title;
  final Function() onPressed;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isFilled ? AppColors.primary : Colors.white,
        foregroundColor: isFilled ? Colors.white : AppColors.primary,
        elevation: 0,
        fixedSize: Size(Get.width, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 16,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: isFilled ? Colors.white : AppColors.primary,
        ),
      ),
    );
  }
}
