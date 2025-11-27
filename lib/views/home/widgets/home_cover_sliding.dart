import 'package:flutter/material.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_image.dart';

class HomeCoverSliding extends StatelessWidget {
  const HomeCoverSliding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 326 / 145,
          child: Image.asset(AppImage.imagesCover),
        ),
      ),
    );
  }
}
