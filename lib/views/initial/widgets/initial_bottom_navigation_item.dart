import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/model/bottom_navigation_model.dart';

class InitialBottomNavigationItem extends StatelessWidget {
  const InitialBottomNavigationItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final BottomNavigationModel item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        item.icon,
        width: 20,
        height: 20,
        colorFilter: ColorFilter.mode(
          isSelected ? AppColor.button : AppColor.button.withValues(alpha: .3),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
