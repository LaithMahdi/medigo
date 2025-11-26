import 'package:flutter/material.dart';
import '../../core/constant/app_color.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.button.withValues(alpha: .2),
        foregroundColor: AppColor.button,
        side: BorderSide(color: AppColor.button, width: 2),
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      child: Text(text),
    );
  }
}
