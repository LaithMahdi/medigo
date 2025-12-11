import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/constant/app_color.dart';
import '../core/constant/app_image.dart';

class PopularDoctorCard extends StatelessWidget {
  const PopularDoctorCard({
    super.key,
    this.enableFullWidth = false,
    required this.onTap,
  });

  final bool enableFullWidth;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(7),
      child: Container(
        width: enableFullWidth
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.width - 40,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: AppColor.white,
          border: Border.all(color: AppColor.grey3),
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withValues(alpha: .05),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          spacing: 12,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImage.imagesDoctorDoctor1),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  Text(
                    "Dr. Ayesha Rahman",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                  ),
                  Text(
                    "Dentist",
                    style: TextStyle(fontSize: 12, color: AppColor.grey1),
                  ),
                  Row(
                    spacing: 7,
                    children: [
                      SvgPicture.asset(
                        AppImage.imagesIconesStar,
                        width: 12,
                        height: 12,
                      ),
                      Text.rich(
                        TextSpan(
                          text: "5.0 ",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor.black,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: "(200 Reviews)",
                              style: TextStyle(
                                fontSize: 11,
                                color: AppColor.grey1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppImage.imagesIconesHeart,
                    width: 20,
                    height: 20,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "\$15",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "/hr",
                        style: TextStyle(fontSize: 10, color: AppColor.primary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
