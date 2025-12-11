import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/shared/spacer.dart';
import 'package:medigo/views/doctor_detail/widgets/doctor_detail_title.dart';
import '../../controllers/appointment_controller.dart';
import '../../core/constant/app_color.dart';
import '../../data/dummy.dart';
import '../../shared/buttons/custom_back_button.dart';
import '../../shared/buttons/custom_filter_button.dart';
import 'widgets/appointment_time.dart';
import 'widgets/appointment_time_line.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppointmentController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CustomBackButton(),
            title: Text(
              "New Appointment",
              style: TextStyle(
                fontSize: 16,
                color: AppColor.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SliverToBoxAdapter(child: AppointmentTimeLine()),
          SliverToBoxAdapter(child: VerticalSpacer(25)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  DoctorDetailTitle("Consultation Type"),
                  Wrap(
                    spacing: 13,
                    runSpacing: 10,
                    children: List.generate(consultationTypeFilters.length, (
                      index,
                    ) {
                      final item = consultationTypeFilters[index];
                      return CustomFilterButton(
                        item: item,
                        isSelected: controller.selectedConsultationType == item,
                        onTap: () => controller.selectConsultationType(item),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: VerticalSpacer(25)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  DoctorDetailTitle("Available Slots"),
                  Wrap(
                    spacing: 13,
                    runSpacing: 10,
                    children: List.generate(availabilityFilters.length, (
                      index,
                    ) {
                      final item = availabilityFilters[index];
                      return CustomFilterButton(
                        item: item,
                        isSelected: controller.selectedAvailability == item,
                        onTap: () => controller.selectAvailability(item),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(child: VerticalSpacer(25)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  DoctorDetailTitle("Available Time"),
                  Wrap(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
