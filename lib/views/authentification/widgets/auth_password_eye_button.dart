import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';

class AuthPasswordEyeButton extends StatelessWidget {
  const AuthPasswordEyeButton({
    super.key,
    required this.isObscured,
    required this.onPressed,
  });

  final bool isObscured;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        !isObscured ? AppImage.imagesIconesEyeSlash : AppImage.imagesIconesEye,
        width: 20,
        height: 20,
        colorFilter: ColorFilter.mode(AppColor.grey1, BlendMode.srcIn),
      ),
    );
  }
}
