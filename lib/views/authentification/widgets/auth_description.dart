import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class AuthDescription extends StatelessWidget {
  const AuthDescription({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 14, color: AppColor.grey1));
  }
}
