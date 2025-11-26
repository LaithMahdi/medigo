import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_color.dart';
import '../../controllers/onboarding_controller.dart';
import '../../data/dummy.dart';
import 'widgets/onboarding_body_bottom.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<OnboardingController>(
            builder: (controller) => PageView.builder(
              controller: controller.controller,
              onPageChanged: (value) => controller.incrementPage(value),
              physics: NeverScrollableScrollPhysics(),
              itemCount: onboardingItems.length,
              itemBuilder: (context, index) {
                final item = onboardingItems[index];
                return Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(item.image, fit: BoxFit.cover),
                    ),
                    Positioned.fill(
                      child: Container(
                        color: AppColor.black.withValues(alpha: .3),
                      ),
                    ),
                    OnboardingBodyBottom(item: item),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
