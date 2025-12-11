import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/shared/spacer.dart';
import '../../controllers/appointment_controller.dart';
import '../../core/constant/app_color.dart';
import '../../shared/buttons/custom_back_button.dart';
import 'widgets/appointment_consultationTypeSection.dart';
import 'widgets/appointment_fees_section.dart';
import 'widgets/appointment_slots_section.dart';
import 'widgets/appointment_time_line.dart';
import 'widgets/appointment_time_section.dart';

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
          SliverToBoxAdapter(child: AppointmentConsultationTypeSection()),
          SliverToBoxAdapter(child: VerticalSpacer(25)),
          SliverToBoxAdapter(child: AppointmentSlotsSection()),
          SliverToBoxAdapter(child: VerticalSpacer(25)),
          SliverToBoxAdapter(child: AppointmentTimeSection()),
          SliverToBoxAdapter(child: VerticalSpacer(25)),
          SliverToBoxAdapter(child: AppointmentFeesSection()),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () => controller.onBooking(),
          child: Text("Book Appointment"),
        ),
      ),
    );
  }
}
