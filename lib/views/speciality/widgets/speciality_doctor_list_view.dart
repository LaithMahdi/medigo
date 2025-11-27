import 'package:flutter/material.dart';

import '../../../shared/popular_doctor_card.dart';
import '../../../shared/spacer.dart';

class SpecialityDoctorListView extends StatelessWidget {
  const SpecialityDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return PopularDoctorCard(enableFullWidth: true);
      },
      separatorBuilder: (context, index) => VerticalSpacer(23),
    );
  }
}
