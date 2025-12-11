import 'package:flutter/material.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import 'doctor_detail_stat.dart';

class DoctorDetailStatSection extends StatelessWidget {
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
              title: "1.2K",
              value: "Patients",
              icon: AppImage.imagesIconesUsers,
            ),
          ),
          Expanded(
            child: DoctorDetailStat(
              title: "10 Yrs",
              value: "Experience",
              icon: AppImage.imagesIconesBadge,
              color: AppColor.roseE8,
            ),
          ),
          Expanded(
            child: DoctorDetailStat(
              title: "4.5",
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
