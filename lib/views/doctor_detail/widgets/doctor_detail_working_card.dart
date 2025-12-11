import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class DoctorDetailWorkingCard extends StatelessWidget {
  const DoctorDetailWorkingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColor.grey3),
        color: AppColor.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Monday",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.black,
            ),
          ),
          Text(
            "08:00 - 12:00",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColor.grey1,
            ),
          ),
        ],
      ),
    );
  }
}
