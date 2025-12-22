import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/speciality_controller.dart';

import '../../../core/config.dart';
import '../../../shared/popular_doctor_card.dart';
import '../../../shared/spacer.dart';

class SpecialityDoctorListView extends StatelessWidget {
  const SpecialityDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpecialityController>(
      builder: (controller) => controller.isLoading
          ? SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: CircularProgressIndicator()),
            )
          : controller.doctors.isEmpty
          ? SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search_off, size: 80, color: Colors.grey),
                  Text(
                    "No doctors found with the applied filters.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            )
          : SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
              sliver: SliverList.separated(
                itemCount: controller.doctors.length,
                itemBuilder: (context, index) {
                  final doctor = controller.doctors[index];
                  return PopularDoctorCard(
                    doctor: doctor,
                    enableFullWidth: true,
                    onTap: () => controller.onDetailView(),
                  );
                },
                separatorBuilder: (context, index) => VerticalSpacer(23),
              ),
            ),
    );
  }
}
