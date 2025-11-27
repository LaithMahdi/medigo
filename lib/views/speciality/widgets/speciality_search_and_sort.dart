import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/speciality_controller.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';

class SpecialitySearchAndSort extends GetView<SpecialityController> {
  const SpecialitySearchAndSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: Config.spacing15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            style: TextStyle(fontSize: 14, color: AppColor.grey1),
            TextSpan(
              text: "114 Found for “",
              children: [
                TextSpan(
                  text: controller.speciality.title,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.grey1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(text: "”"),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              spacing: 10,
              children: [
                Text(
                  "Sort by",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                ),
                SvgPicture.asset(
                  AppImage.imagesIconesSort,
                  width: 16,
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
