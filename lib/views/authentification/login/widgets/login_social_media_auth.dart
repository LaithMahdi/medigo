import 'package:flutter/material.dart';
import '../../../../core/constant/app_image.dart';
import '../../widgets/auth_outline_button.dart';

class LoginSocialMediaAuth extends StatelessWidget {
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
            onPressed: () {},
          ),
        ),
        Expanded(
          child: AuthOutlineButton(
            text: "Facebook",
            icon: AppImage.imagesIconesFacebook,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
