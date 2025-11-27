import 'package:flutter/material.dart';
import '../../../core/config.dart';
import 'home_popular_doctor_card.dart';

class HomePopularDoctorSection extends StatelessWidget {
  const HomePopularDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        spacing: 20,
        children: List.generate(5, (index) => HomePopularDoctorCard()),
      ),
    );
  }
}
