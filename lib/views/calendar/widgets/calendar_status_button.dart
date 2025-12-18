import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/model/filter_model.dart';

class CalendarStatusButton extends StatelessWidget {
  const CalendarStatusButton({
    super.key,
    required this.status,

    required this.isSelected,
    required this.onTap,
  });

  final FilterModel status;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? AppColor.primary : Colors.transparent,
              width: 2.5,
            ),
          ),
        ),
        child: Text(
          status.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            color: isSelected ? AppColor.primary : AppColor.black,
          ),
        ),
      ),
    );
  }
}
