import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class AppointmentTime extends StatelessWidget {
  const AppointmentTime({
    super.key,
    required this.item,
    this.isSelected = false,
    required this.onTap,
  });

  final String item;
  final bool isSelected;
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
        child: Text(
          item,
          style: TextStyle(fontSize: 14, color: AppColor.black),
        ),
      ),
    );
  }
}
