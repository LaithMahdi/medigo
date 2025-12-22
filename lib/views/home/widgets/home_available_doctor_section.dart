import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:medigo/controllers/home_controller.dart';
import '../../../core/config.dart';
import 'home_available_doctor_card.dart';

class HomeAvailableDoctorSection extends StatelessWidget {
  const HomeAvailableDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => controller.isLoadingOnlinesDoctors
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
              child: Row(
                spacing: 10,
                children: List.generate(controller.onlinesDoctors.length, (
                  index,
                ) {
                  final doctor = controller.onlinesDoctors[index];
                  return HomeAvailableDoctorCard(
                    doctor: doctor,
                    onTap: () => controller.onDetailView(doctor),
                  );
                }),
              ),
            ),
    );
  }
}
