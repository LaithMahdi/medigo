import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/onboarding_controller.dart';
import '../../../shared/buttons/custom_outline_button.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) => Row(
        spacing: controller.isFirstPage() ? 0 : 16,
        children: [
          controller.isFirstPage()
              ? SizedBox()
              : Expanded(
                  child: CustomOutlineButton(
                    text: "Previous",
                    onPressed: () => controller.previousPage(),
                  ),
                ),
          Expanded(
            child: ElevatedButton(
              onPressed: () => controller.nextPage(),
              child: Text(controller.isLastPage() ? "Get Started" : "Next"),
            ),
          ),
        ],
      ),
    );
  }
}
