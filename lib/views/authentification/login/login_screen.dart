import 'package:flutter/material.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/shared/spacer.dart';

import '../widgets/auth_input.dart';
import '../widgets/auth_label.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: Config.defaultPadding,
        children: [
          VerticalSpacer(41),
          Text(
            "Go ahead & set up your account",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColor.black,
            ),
          ),
          VerticalSpacer(15),
          Text(
            "Welcome back! Please sign in to manage your account.",
            style: TextStyle(fontSize: 14, color: AppColor.grey1),
          ),
          VerticalSpacer(48),
          AuthLabel(label: "Email"),
          VerticalSpacer(15),
          AuthInput(
            hintText: "user@mail.com",
            controller: TextEditingController(),
          ),
        ],
      ),
    );
  }
}
