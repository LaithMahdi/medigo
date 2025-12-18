import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class SuccessAppointmentTextRich extends StatelessWidget {
  const SuccessAppointmentTextRich({
    super.key,
    required this.label,
    required this.subLabel,
  });

  final String label;
  final String subLabel;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColor.black,
        ),
        children: [
          TextSpan(
            text: subLabel,
            style: TextStyle(fontSize: 14, color: AppColor.grey1),
          ),
        ],
      ),
    );
  }
}
