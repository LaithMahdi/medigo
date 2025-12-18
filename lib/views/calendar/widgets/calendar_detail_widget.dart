import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import 'calendar_icon_button.dart';

class CalendarDetailWidget extends StatelessWidget {
  const CalendarDetailWidget({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CalendarIconButton(icon: icon, onPressed: () {}),
        Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontSize: 12, color: AppColor.grey1)),
            Text(
              value,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
