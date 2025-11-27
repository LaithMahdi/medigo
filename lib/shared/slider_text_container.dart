import 'package:flutter/material.dart';
import '../core/constant/app_color.dart';

class SliderTextContainer extends StatelessWidget {
  const SliderTextContainer({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border.all(color: AppColor.grey3),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text.rich(
        TextSpan(
          text: "\$ ",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColor.black,
          ),
          children: [
            TextSpan(
              text: value,
              style: TextStyle(fontSize: 14, color: AppColor.black),
            ),
          ],
        ),
      ),
    );
  }
}
