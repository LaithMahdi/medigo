import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class AuthBottomTextButton extends StatelessWidget {
  const AuthBottomTextButton({
    super.key,
    required this.label,
    required this.subLabel,
    required this.onTap,
  });

  final String label;
  final String subLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: label,
          style: TextStyle(fontSize: 13, color: AppColor.black),
          children: [
            TextSpan(
              text: subLabel,
              style: TextStyle(
                fontSize: 13,
                color: AppColor.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
