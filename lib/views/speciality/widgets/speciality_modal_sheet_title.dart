import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../shared/spacer.dart';

class SpecialityModalSheetTitle extends StatelessWidget {
  const SpecialityModalSheetTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.black,
          ),
        ),
        VerticalSpacer(10),
        Divider(color: AppColor.grey2),
      ],
    );
  }
}
