import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/shared/spacer.dart';

import '../../data/dummy.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
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
                          Row(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(onboardingItems.length, (
                              index,
                            ) {
                              bool isActive = index == 0;
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
                          VerticalSpacer(40),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(),
                              child: Text("Next"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
