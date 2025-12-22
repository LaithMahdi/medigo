import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medigo/data/model/appointment_model.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import 'calendar_detail_widget.dart';
import 'calendar_icon_button.dart';

class CalendarItemCard extends StatelessWidget {
  const CalendarItemCard({
    super.key,
    required this.appointment,
    required this.onCancel,
  });

  final AppointmentModel appointment;
  final VoidCallback onCancel;

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
                backgroundImage: NetworkImage("${appointment.doctor?.image}"),
              ),
              Column(
                spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${appointment.doctor?.name}",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                  ),
                  Text(
                    "${appointment.specialityModel?.title}",
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
                  value: appointment.date != null
                      ? DateFormat(
                          "d MMM y",
                        ).format(DateTime.parse(appointment.date!))
                      : "N/A",
                  icon: AppImage.imagesIconesCalendar,
                ),
              ),
              Expanded(
                child: CalendarDetailWidget(
                  label: "Time",
                  value: "${appointment.time}",
                  icon: AppImage.imagesIconesClock,
                ),
              ),
            ],
          ),
          appointment.status == "pending"
              ? Column(
                  spacing: 15,
                  children: [
                    Divider(color: AppColor.grey3),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onCancel,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.red,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                        ),
                        child: Text(
                          "Cancel Appointment",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
