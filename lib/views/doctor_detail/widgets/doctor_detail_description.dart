import 'package:flutter/material.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'doctor_detail_title.dart';

class DoctorDetailDescription extends StatelessWidget {
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
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 12, color: AppColor.grey1, height: 3),
          ),
        ],
      ),
    );
  }
}
