import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controllers/speciality_controller.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import 'speciality_modal_bottom_sheet.dart';

class SpecialitySearchAndSort extends GetView<SpecialityController> {
  const SpecialitySearchAndSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<SpecialityController>(
            builder: (controller) => Text.rich(
              style: TextStyle(fontSize: 14, color: AppColor.grey1),
              TextSpan(
                text:
                    "${controller.isLoading ? '0' : '${controller.doctors.length}'} Found for “",
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
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SpecialityModalBottomSheet(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                backgroundColor: AppColor.white,
              );
            },
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
