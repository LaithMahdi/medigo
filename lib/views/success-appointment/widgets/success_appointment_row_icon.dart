import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constant/app_color.dart';

class SuccessAppointmentRowIcon extends StatelessWidget {
  const SuccessAppointmentRowIcon({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        SvgPicture.asset(
          icon,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(AppColor.black, BlendMode.srcIn),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColor.black,
          ),
        ),
      ],
    );
  }
}
