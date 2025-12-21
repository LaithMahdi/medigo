import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/home_controller.dart';
import '../../../core/config.dart';
import '../../../data/dummy.dart';
import 'home_speciality_item.dart';

class HomeSpecialitySection extends StatelessWidget {
  const HomeSpecialitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
      scrollDirection: Axis.horizontal,
      child: GetBuilder<HomeController>(
        builder: (controller) => controller.isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [CircularProgressIndicator()],
              )
            : Row(
                spacing: 31,
                children: List.generate(controller.specialities.length, (
                  index,
                ) {
                  final speciality = controller.specialities[index];
                  return HomeSpecialityItem(
                    speciality: speciality,
                    onTap: () => controller.onNavigateToSpeciality(speciality),
                  );
                }),
              ),
      ),
    );
  }
}
