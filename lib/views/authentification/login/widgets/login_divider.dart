import 'package:flutter/material.dart';
import '../../../../core/constant/app_color.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColor.grey2)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Or continue with",
            style: TextStyle(fontSize: 14, color: AppColor.grey2),
          ),
        ),
        Expanded(child: Divider(color: AppColor.grey2)),
      ],
    );
  }
}
