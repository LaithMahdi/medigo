import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_color.dart';
import '../../../controllers/doctor_detail_controller.dart';
import 'doctor_detail_title.dart';

class DoctorDetailDescription extends GetView<DoctorDetailController> {
  const DoctorDetailDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          DoctorDetailTitle("About"),
          Text(
            controller.doctor.description,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 12, color: AppColor.grey1, height: 3),
          ),
        ],
      ),
    );
  }
}
