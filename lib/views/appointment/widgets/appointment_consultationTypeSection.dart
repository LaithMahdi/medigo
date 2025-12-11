import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/appointment_controller.dart';
import '../../../core/config.dart';
import '../../../data/dummy.dart';
import '../../../shared/buttons/custom_filter_button.dart';
import '../../doctor_detail/widgets/doctor_detail_title.dart';

class AppointmentConsultationTypeSection extends StatelessWidget {
  const AppointmentConsultationTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          DoctorDetailTitle("Consultation Type"),
          GetBuilder<AppointmentController>(
            builder: (controller) => Wrap(
              spacing: 13,
              runSpacing: 10,
              children: List.generate(consultationTypeFilters.length, (index) {
                final item = consultationTypeFilters[index];
                return CustomFilterButton(
                  item: item,
                  isSelected: controller.selectedConsultationType == item,
                  onTap: () => controller.selectConsultationType(item),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
