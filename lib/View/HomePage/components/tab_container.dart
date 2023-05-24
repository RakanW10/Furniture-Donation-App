import 'package:flutter/material.dart';
import 'package:furniture_donation/style.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({
    super.key,
    required this.iconData,
    required this.index,
    required this.selectedTabIndex,
  });
  final IconData iconData;
  final int index;
  final int selectedTabIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 76,
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(76),
        color: index == selectedTabIndex ? AppColors.primary : Colors.white,
      ),
      child: Icon(
        iconData,
        size: 40,
        color: index == selectedTabIndex ? Colors.white : AppColors.primary,
      ),
    );
  }
}
