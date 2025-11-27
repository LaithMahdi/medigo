import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/initial_controller.dart';
import '../../../data/dummy.dart';
import 'initial_bottom_navigation_item.dart';

class InitialBottomNavigation extends StatelessWidget {
  const InitialBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InitialController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(bottomNavigationItems.length, (index) {
          final item = bottomNavigationItems[index];
          final isSelected = controller.currentPage == index;
          return InitialBottomNavigationItem(
            item: item,
            isSelected: isSelected,
            onTap: () => controller.setCurrentPage(index),
          );
        }),
      ),
    );
  }
}
