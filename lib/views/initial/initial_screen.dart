import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/data/dummy.dart';
import '../../controllers/initial_controller.dart';
import 'widgets/initial_bottom_navigation.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InitialController());
    return Scaffold(
      body: GetBuilder<InitialController>(
        builder: (controller) =>
            bottomNavigationItems.elementAt(controller.currentPage).page,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        height: 80,
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withValues(alpha: .1),
              offset: const Offset(0, -2),
              blurRadius: 4,
            ),
          ],
        ),
        child: InitialBottomNavigation(),
      ),
    );
  }
}
