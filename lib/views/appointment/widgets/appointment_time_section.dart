import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/appointment_controller.dart';
import '../../../core/config.dart';
import '../../doctor_detail/widgets/doctor_detail_title.dart';
import 'appointment_time.dart';

class AppointmentTimeSection extends StatelessWidget {
  const AppointmentTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          DoctorDetailTitle("Available Time"),
          GetBuilder<AppointmentController>(
            builder: (controller) => Wrap(
              spacing: 13,
              runSpacing: 10,
              children: List.generate(4, (index) {
                return AppointmentTime(
                  item: "14:00",
                  isSelected: controller.selectedTime == "14:00",
                  onTap: () => controller.selectTime("14:00"),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
