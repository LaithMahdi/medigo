import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final String? Function(String? value)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: AppColor.button,
      style: TextStyle(
        color: AppColor.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppColor.grey2, fontSize: 14),
        contentPadding: EdgeInsets.all(15),
        filled: true,
        fillColor: AppColor.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.grey2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.grey2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.error, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.button, width: 2),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
