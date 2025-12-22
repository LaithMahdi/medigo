import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/appointment_controller.dart';
import '../../../core/config.dart';
import '../../../data/dummy.dart';
import '../../doctor_detail/widgets/doctor_detail_title.dart';
import 'appointment_fees_item.dart';

class AppointmentFeesSection extends StatelessWidget {
  const AppointmentFeesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppointmentController>(
      builder: (controller) =>
          controller.selectedConsultationType?.value == "online"
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  DoctorDetailTitle("Consultation Fees"),
                  Row(
                    spacing: 10,
                    children: List.generate(fees.length, (index) {
                      final item = fees[index];
                      return Expanded(
                        child: AppointmentFeesItem(item: item, onTap: () {}),
                      );
                    }),
                  ),
                ],
              ),
            )
          : SizedBox(),
    );
  }
}
