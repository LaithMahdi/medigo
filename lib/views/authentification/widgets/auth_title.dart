import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColor.black,
      ),
    );
  }
}
