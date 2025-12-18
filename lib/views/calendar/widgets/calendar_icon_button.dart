import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_color.dart';

class CalendarIconButton extends StatelessWidget {
  const CalendarIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        width: 20,
        height: 20,
        colorFilter: ColorFilter.mode(AppColor.primary, BlendMode.srcIn),
      ),
      style: IconButton.styleFrom(
        backgroundColor: AppColor.primary.withValues(alpha: .3),
      ),
    );
  }
}
