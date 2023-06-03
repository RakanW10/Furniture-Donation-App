import 'package:flutter/material.dart';
import 'package:furniture_donation/View/Components/logo_big.dart';
import 'package:furniture_donation/style.dart';

class EmptyContainer extends StatelessWidget {
  const EmptyContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const LogoBig(),
          const SizedBox(height: 32),
          Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          const Spacer(flex: 2)
        ],
      ),
    );
  }
}
