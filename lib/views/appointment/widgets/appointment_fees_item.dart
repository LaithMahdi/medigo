import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/model/feel_model.dart';
import '../../../shared/spacer.dart';

class AppointmentFeesItem extends StatelessWidget {
  const AppointmentFeesItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  final FeelModel item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 16),
              blurRadius: 32,
              color: AppColor.black.withValues(alpha: .2),
            ),
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              color: AppColor.black.withValues(alpha: .1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              item.icon,
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(AppColor.grey2, BlendMode.srcIn),
            ),
            VerticalSpacer(12),
            Text(
              item.name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColor.grey1,
              ),
            ),
            Text(
              "\$${item.price}",
              style: TextStyle(
                fontSize: 16,
                color: AppColor.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
