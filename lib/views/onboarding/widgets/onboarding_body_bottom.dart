import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/model/onboarding_model.dart';
import '../../../shared/spacer.dart';
import 'onboarding_buttons.dart';
import 'onboarding_dots_indicator.dart';

class OnboardingBodyBottom extends StatelessWidget {
  const OnboardingBodyBottom({super.key, required this.item});

  final OnboardingModel item;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        height: MediaQuery.of(context).size.height * .42,
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
            Spacer(),
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
              style: TextStyle(height: 2, fontSize: 14, color: AppColor.grey1),
            ),
            Spacer(flex: 2),
            OnboardingDotsIndicator(),
            VerticalSpacer(40),
            OnboardingButtons(),
          ],
        ),
      ),
    );
  }
}
