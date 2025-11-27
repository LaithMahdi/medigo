import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/app_color.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton.filled(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 17,
          color: AppColor.grey1,
        ),
        style: IconButton.styleFrom(
          backgroundColor: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: AppColor.grey3),
          ),
          minimumSize: Size(40, 40),
        ),
      ),
    );
  }
}
