import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/calendar_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/dummy.dart';
import 'calendar_status_button.dart';

class CalendarStatusSection extends StatelessWidget {
  const CalendarStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColor.grey3)),
      ),
      child: GetBuilder<CalendarController>(
        builder: (controller) => Row(
          children: List.generate(statuses.length, (index) {
            final status = statuses[index];
            return Expanded(
              child: CalendarStatusButton(
                status: status,
                isSelected: controller.currentIndex == index,
                onTap: () => controller.onStatusSelected(index),
              ),
            );
          }),
        ),
      ),
    );
  }
}
