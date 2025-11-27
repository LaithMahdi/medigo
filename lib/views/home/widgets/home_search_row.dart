import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medigo/core/config.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import '../../authentification/widgets/auth_input.dart';

class HomeSearchRow extends StatelessWidget {
  const HomeSearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        spacing: 8,
        children: [
          Expanded(
            child: AuthInput(
              controller: TextEditingController(),
              hintText: "Find the right doctor for you",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  AppImage.imagesIconesSearch,
                  width: 18,
                  height: 18,
                ),
              ),
            ),
          ),
          IconButton.filled(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppImage.imagesIconesFilter,
              width: 20,
              height: 20,
            ),
            style: IconButton.styleFrom(
              minimumSize: Size(50, 50),
              padding: EdgeInsets.all(10),
              backgroundColor: AppColor.button,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
