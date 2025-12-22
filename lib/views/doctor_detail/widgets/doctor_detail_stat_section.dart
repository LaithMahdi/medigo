import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/doctor_detail_controller.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import 'doctor_detail_stat.dart';

class DoctorDetailStatSection extends GetView<DoctorDetailController> {
  const DoctorDetailStatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        spacing: 14,
        children: [
          Expanded(
            child: DoctorDetailStat(
              title: "${controller.doctor.patientNumber}",
              value: "Patients",
              icon: AppImage.imagesIconesUsers,
            ),
          ),
          Expanded(
            child: DoctorDetailStat(
              title: "${controller.doctor.experienceNumber} Yrs",
              value: "Experience",
              icon: AppImage.imagesIconesBadge,
              color: AppColor.roseE8,
            ),
          ),
          Expanded(
            child: DoctorDetailStat(
              title: "${controller.doctor.ratingNumber}",
              value: "Ratings",
              icon: AppImage.imagesIconesStarOutline,
              color: AppColor.yellowF7,
            ),
          ),
        ],
      ),
    );
  }
}
