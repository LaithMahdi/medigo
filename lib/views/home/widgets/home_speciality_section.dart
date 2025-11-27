import 'package:flutter/material.dart';
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
      child: Row(
        spacing: 31,
        children: List.generate(specialityItems.length, (index) {
          final speciality = specialityItems[index];
          return HomeSpecialityItem(speciality: speciality);
        }),
      ),
    );
  }
}
