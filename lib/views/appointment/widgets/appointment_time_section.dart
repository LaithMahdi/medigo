import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/appointment_controller.dart';
import '../../../core/config.dart';
import '../../../data/dummy.dart';
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
            builder: (controller) {
              List<String> times =
                  controller.selectedAvailability?.value == "morning"
                  ? morningTimeAvailabilityFilters
                  : controller.selectedAvailability?.value == "afternoon"
                  ? afternoonTimeAvailabilityFilters
                  : nightTimeAvailabilityFilters;

              return Wrap(
                spacing: 13,
                runSpacing: 10,
                children: List.generate(times.length, (index) {
                  final time = times[index];
                  return AppointmentTime(
                    item: time,
                    isSelected: controller.selectedTime == time,
                    onTap: () => controller.selectTime(time),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
