import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/model/speciality_model.dart';

class HomeSpecialityItem extends StatelessWidget {
  const HomeSpecialityItem({
    super.key,
    required this.speciality,
    required this.onTap,
  });

  final SpecialityModel speciality;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        spacing: 5,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: AppColor.grey4,
              borderRadius: BorderRadius.circular(7),
            ),
            child: SvgPicture.asset(speciality.image, width: 25, height: 25),
          ),
          Text(
            speciality.title,
            style: TextStyle(fontSize: 12, color: AppColor.grey1),
          ),
        ],
      ),
    );
  }
}
