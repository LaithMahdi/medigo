import 'package:flutter/material.dart';
import '../../../core/config.dart';
import 'home_available_doctor_card.dart';

class HomeAvailableDoctorSection extends StatelessWidget {
  const HomeAvailableDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: Row(
        spacing: 10,
        children: List.generate(5, (index) {
          return HomeAvailableDoctorCard();
        }),
      ),
    );
  }
}
