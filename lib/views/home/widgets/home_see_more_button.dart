import 'package:flutter/material.dart';
import '../../../core/config.dart';
import '../../../core/constant/app_color.dart';

class HomeSeeMoreButton extends StatelessWidget {
  const HomeSeeMoreButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.black,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              "See all",
              style: TextStyle(fontSize: 13, color: AppColor.primary),
            ),
          ),
        ],
      ),
    );
  }
}
