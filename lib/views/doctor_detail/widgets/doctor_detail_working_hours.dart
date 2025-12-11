import 'package:flutter/material.dart';
import 'package:medigo/core/config.dart';
import 'doctor_detail_title.dart';
import 'doctor_detail_working_card.dart';

class DoctorDetailWorkingHours extends StatelessWidget {
  const DoctorDetailWorkingHours({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          DoctorDetailTitle("Working Time"),
          Column(
            spacing: 14,
            children: List.generate(4, (index) => DoctorDetailWorkingCard()),
          ),
        ],
      ),
    );
  }
}
