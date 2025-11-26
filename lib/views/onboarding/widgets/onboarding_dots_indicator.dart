import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/onboarding_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/dummy.dart';

class OnboardingDotsIndicator extends StatelessWidget {
  const OnboardingDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) => Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(onboardingItems.length, (index) {
          bool isActive = controller.currentPage == index;
          return Container(
            height: 10,
            width: isActive ? 40 : 10,
            decoration: BoxDecoration(
              color: isActive
                  ? AppColor.blue1
                  : AppColor.blue1.withValues(alpha: .2),
              borderRadius: BorderRadius.circular(5),
            ),
          );
        }),
      ),
    );
  }
}
