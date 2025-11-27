import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medigo/core/config.dart';
import '../core/constant/app_color.dart';
import '../core/constant/app_image.dart';
import '../views/authentification/widgets/auth_input.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({
    required this.controller,
    this.title = "Find the right doctor for you",
    required this.onTap,
    super.key,
  });

  final TextEditingController controller;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        spacing: 8,
        children: [
          Expanded(
            child: AuthInput(
              controller: controller,
              hintText: title,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  AppImage.imagesIconesSearch,
                  width: 18,
                  height: 18,
                ),
              ),
            ),
          ),
          IconButton.filled(
            onPressed: onTap,
            icon: SvgPicture.asset(
              AppImage.imagesIconesFilter,
              width: 20,
              height: 20,
            ),
            style: IconButton.styleFrom(
              minimumSize: Size(50, 50),
              padding: EdgeInsets.all(10),
              backgroundColor: AppColor.button,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
