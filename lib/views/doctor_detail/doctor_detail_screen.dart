import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medigo/core/constant/app_image.dart';

import '../../core/config.dart';
import '../../core/constant/app_color.dart';
import '../../shared/buttons/custom_back_button.dart';
import '../../shared/spacer.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CustomBackButton(),
            title: Text(
              "Dr. Ayesha Rahman",
              style: TextStyle(
                fontSize: 16,
                color: AppColor.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SvgPicture.asset(
                AppImage.imagesIconesHeart,
                width: 22,
                height: 22,
              ),
              HorizontalSpacer(15),
            ],
          ),
          SliverToBoxAdapter(child: VerticalSpacer(19)),
          SliverToBoxAdapter(
            child: Padding(
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
            ),
          ),
        ],
      ),
    );
  }
}
