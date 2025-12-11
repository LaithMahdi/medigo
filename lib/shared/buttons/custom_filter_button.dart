import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constant/app_color.dart';
import '../../data/model/filter_model.dart';

class CustomFilterButton extends StatelessWidget {
  const CustomFilterButton({
    super.key,
    required this.item,
    this.isSelected = false,
    this.isSvg = false,
    required this.onTap,
  });

  final FilterModel item;
  final bool isSelected;
  final bool isSvg;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(7),
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInToLinear,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColor.primary : AppColor.grey3,
          ),
          color: isSelected
              ? AppColor.primary.withValues(alpha: .2)
              : AppColor.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          children: [
            isSvg
                ? SvgPicture.asset("${item.image}", width: 18, height: 18)
                : Image.asset("${item.image}", width: 18, height: 18),
            Text(
              item.name,
              style: TextStyle(fontSize: 14, color: AppColor.black),
            ),
          ],
        ),
      ),
    );
  }
}
