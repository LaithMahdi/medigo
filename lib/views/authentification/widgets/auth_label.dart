import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class AuthLabel extends StatelessWidget {
  const AuthLabel({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(color: AppColor.black, fontWeight: FontWeight.w500),
    );
  }
}
