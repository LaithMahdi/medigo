import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/core/constant/app_image.dart';
import '../controllers/splash_controller.dart';
import '../shared/spacer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.linear1, AppColor.linear2],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(
              AppImage.imagesLogoLogoImage,
              width: 83,
              height: 83,
            ),
            VerticalSpacer(14),
            SvgPicture.asset(
              AppImage.imagesLogoLogoText,
              width: 120,
              height: 20,
            ),
            Spacer(),
            SpinKitCircle(color: Colors.white, size: 50.0),
            VerticalSpacer(40),
          ],
        ),
      ),
    );
  }
}
