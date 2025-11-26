import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/shared/spacer.dart';
import '../../controllers/onboarding_controller.dart';
import '../../data/dummy.dart';
import 'widgets/onboarding_dots_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<OnboardingController>(
            builder: (controller) => PageView.builder(
              controller: controller.controller,
              onPageChanged: (value) {
                controller.incrementPage(value);
              },
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

                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 50,
                        ),
                        height: MediaQuery.of(context).size.height * .5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              item.title,
                              style: TextStyle(
                                fontSize: 22,
                                color: AppColor.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            VerticalSpacer(15),
                            Text(
                              item.description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 2,
                                fontSize: 14,
                                color: AppColor.grey1,
                              ),
                            ),
                            Spacer(),
                            OnboardingDotsIndicator(),
                            VerticalSpacer(40),
                            Row(
                              children: [
                                controller.isFirstPage()
                                    ? SizedBox()
                                    : Expanded(
                                        child: ElevatedButton(
                                          onPressed: () =>
                                              controller.previousPage(),
                                          style: ElevatedButton.styleFrom(),
                                          child: Text("Previous"),
                                        ),
                                      ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () => controller.nextPage(),
                                    style: ElevatedButton.styleFrom(),
                                    child: Text(
                                      controller.isLastPage()
                                          ? "Get Started"
                                          : "Next",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
