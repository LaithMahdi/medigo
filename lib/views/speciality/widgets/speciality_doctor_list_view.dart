import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/speciality_controller.dart';

import '../../../shared/popular_doctor_card.dart';
import '../../../shared/spacer.dart';

class SpecialityDoctorListView extends GetView<SpecialityController> {
  const SpecialityDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return PopularDoctorCard(
          enableFullWidth: true,
          onTap: () => controller.onDetailView(),
        );
      },
      separatorBuilder: (context, index) => VerticalSpacer(23),
    );
  }
}
