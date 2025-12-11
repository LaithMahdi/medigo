import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class DoctorDetailTitle extends StatelessWidget {
  const DoctorDetailTitle(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColor.black,
      ),
    );
  }
}
