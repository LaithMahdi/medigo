import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import 'calendar_detail_widget.dart';
import 'calendar_icon_button.dart';

class CalendarItemCard extends StatelessWidget {
  const CalendarItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.white,
        border: Border.all(color: AppColor.grey4),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withValues(alpha: .1),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: AppColor.black.withValues(alpha: .2),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        spacing: 15,
        children: [
          Row(
            spacing: 10,
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(AppImage.imagesDoctorDoctor1),
              ),
              Column(
                spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Margie Dawson",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                  ),
                  Text(
                    "Dentist",
                    style: TextStyle(fontSize: 12, color: AppColor.grey1),
                  ),
                ],
              ),
              Spacer(),
              CalendarIconButton(
                icon: AppImage.imagesIconesVideoCall,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CalendarDetailWidget(
                  label: "Date",
                  value: "12 Dec, 2023",
                  icon: AppImage.imagesIconesCalendar,
                ),
              ),
              Expanded(
                child: CalendarDetailWidget(
                  label: "Time",
                  value: "10:00",
                  icon: AppImage.imagesIconesClock,
                ),
              ),
            ],
          ),
          Divider(color: AppColor.grey3),
          Row(
            spacing: 15,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.grey3,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Text(
                    "Re-book",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.red,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Text(
                    "Leave Review",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
