import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/functions/get_greeting_message.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Text.rich(
          TextSpan(
            text: "Hello ",
            style: TextStyle(fontSize: 18, color: AppColor.black),
            children: [
              TextSpan(
                text: "Mahdi Laith",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColor.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Text(
          getGreetingMessage(),
          style: TextStyle(
            fontSize: 14,
            color: AppColor.grey1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
