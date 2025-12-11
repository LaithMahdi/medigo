import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../core/constant/app_color.dart';

class AppointmentTimeLineItem extends StatelessWidget {
  const AppointmentTimeLineItem({
    super.key,
    required this.date,
    required this.isSelected,
    required this.onTap,
  });

  final DateTime date;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(13),

      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColor.linear1 : AppColor.white,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: AppColor.grey3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 13,
          children: [
            Text(
              DateFormat.d().format(date),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isSelected ? AppColor.white : AppColor.linear1,
              ),
            ),
            Text(
              DateFormat.E().format(date),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isSelected ? AppColor.white : AppColor.linear1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
