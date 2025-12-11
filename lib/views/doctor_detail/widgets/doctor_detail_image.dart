import 'package:flutter/material.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_image.dart';

class DoctorDetailImage extends StatelessWidget {
  const DoctorDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          AppImage.imagesDoctorDoctor2,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
