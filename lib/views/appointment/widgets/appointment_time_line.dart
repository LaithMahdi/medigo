import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medigo/controllers/appointment_controller.dart';

import '../../../core/constant/app_color.dart';
import 'appointment_time_line_item.dart';

class AppointmentTimeLine extends GetView<AppointmentController> {
  const AppointmentTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(
      builder: (controller) => EasyDateTimeLinePicker.itemBuilder(
        focusedDate: controller.date ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 30)),
        daySeparatorPadding: 10,
        itemExtent: 64.0,
        itemBuilder: (context, date, isSelected, isDisabled, isToday, onTap) =>
            AppointmentTimeLineItem(
              date: date,
              isSelected: isSelected,
              onTap: () => controller.onSelectDate(date),
            ),
        onDateChange: (date) => controller.onSelectDate(date),

        timelineOptions: TimelineOptions(height: 90),
        headerOptions: HeaderOptions(
          headerBuilder: (context, date, onTap) {
            return InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  Text(
                    DateFormat.yMMMM().format(date),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 14,
                      color: AppColor.grey1,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
