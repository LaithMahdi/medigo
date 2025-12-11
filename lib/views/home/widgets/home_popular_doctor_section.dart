import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/home_controller.dart';
import '../../../core/config.dart';
import '../../../shared/popular_doctor_card.dart';

class HomePopularDoctorSection extends GetView<HomeController> {
  const HomePopularDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        spacing: 20,
        children: List.generate(
          5,
          (index) => PopularDoctorCard(onTap: () => controller.onDetailView()),
        ),
      ),
    );
  }
}
