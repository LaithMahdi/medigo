import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_color.dart';
import '../../../shared/spacer.dart';

class DoctorDetailStat extends StatelessWidget {
  const DoctorDetailStat({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.color,
  });

  final String title;
  final String value;
  final String icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(21),
        border: Border.all(color: AppColor.grey3),
        boxShadow: [
          BoxShadow(
            color: Color(0xff6b779a).withValues(alpha: .05),
            offset: Offset(0, 10),
            blurRadius: 25,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 63,
            width: 60,
            decoration: BoxDecoration(
              color:
                  color?.withValues(alpha: .15) ??
                  AppColor.blue7A.withValues(alpha: .15),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                icon,
                width: 22,
                height: 22,
                colorFilter: ColorFilter.mode(
                  color ?? AppColor.blue7A,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          VerticalSpacer(17),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColor.black,
            ),
          ),
          VerticalSpacer(3),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColor.grey1,
            ),
          ),
          VerticalSpacer(13),
        ],
      ),
    );
  }
}
