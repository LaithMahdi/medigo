import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/doctor_detail_controller.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_color.dart';

class DoctorDetailInfo extends GetView<DoctorDetailController> {
  const DoctorDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.doctor.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.black,
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  color: AppColor.yellow.withValues(alpha: .25),
                  borderRadius: BorderRadius.circular(100),
                ),

                child: Text(
                  "Dentist",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.yellow,
                  ),
                ),
              ),
            ],
          ),
          Text.rich(
            TextSpan(
              text: "\$${controller.doctor.price}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColor.primary,
              ),
              children: [
                TextSpan(
                  text: "/hr",
                  style: TextStyle(fontSize: 14, color: AppColor.primary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
