import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_color.dart';

class AuthOutlineButton extends StatelessWidget {
  const AuthOutlineButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  final String text;
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: BorderSide(color: AppColor.grey2),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 17),
        foregroundColor: AppColor.black,
      ),
      child: Row(
        spacing: 10,
        children: [
          SvgPicture.asset(icon, width: 20, height: 20),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: AppColor.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
