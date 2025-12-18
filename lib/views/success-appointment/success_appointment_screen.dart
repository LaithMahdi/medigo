import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/core/constant/app_image.dart';
import 'package:medigo/shared/spacer.dart';
import '../../controllers/success_appointment_controller.dart';
import 'widgets/success_appointment_row_icon.dart';
import 'widgets/success_appointment_text_rich.dart';

class SuccessAppointmentScreen extends StatelessWidget {
  const SuccessAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SuccessAppointmentController());
    return Scaffold(
      body: Padding(
        padding: Config.defaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImage.imagesIconesChecked, width: 140, height: 140),
            VerticalSpacer(25),
            Text(
              "Congratulations !",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
            VerticalSpacer(15),
            SuccessAppointmentTextRich(
              label: "Laith mahdi,",
              subLabel: " your appointment with",
            ),
            VerticalSpacer(6),
            SuccessAppointmentTextRich(
              label: "Dr. Ayesha Rahman",
              subLabel: "  had been created.",
            ),
            VerticalSpacer(17),
            Divider(color: AppColor.grey3),
            VerticalSpacer(17),
            SuccessAppointmentRowIcon(
              label: "15 Nov 2025",
              icon: AppImage.imagesIconesCalendar,
            ),
            VerticalSpacer(17),
            SuccessAppointmentRowIcon(
              label: "10:00",
              icon: AppImage.imagesIconesClock,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () => controller.onBooking(),
          child: Text("See Appointment"),
        ),
      ),
    );
  }
}
