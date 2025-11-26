import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/login_controller.dart';
import '../../../../core/constant/app_image.dart';
import '../../widgets/auth_outline_button.dart';

class LoginSocialMediaAuth extends GetView<LoginController> {
  const LoginSocialMediaAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Expanded(
          child: AuthOutlineButton(
            text: "Google",
            icon: AppImage.imagesIconesGoogle,
            onPressed: () => controller.loginWithGoogle(),
          ),
        ),
        Expanded(
          child: AuthOutlineButton(
            text: "Facebook",
            icon: AppImage.imagesIconesFacebook,
            onPressed: () => controller.loginWithFacebook(),
          ),
        ),
      ],
    );
  }
}
