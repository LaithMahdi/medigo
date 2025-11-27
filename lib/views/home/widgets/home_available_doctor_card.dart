import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';

class HomeAvailableDoctorCard extends StatelessWidget {
  const HomeAvailableDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                AppImage.imagesDoctorDoctor3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,

            right: 0,
            left: 0,
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              decoration: BoxDecoration(
                color: AppColor.black.withValues(alpha: .4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Sarah",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white,
                    ),
                  ),
                  Text(
                    "Otologist",
                    style: TextStyle(fontSize: 12, color: AppColor.secondary),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
