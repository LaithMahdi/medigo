import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/speciality_controller.dart';
import '../../../../data/dummy.dart';
import '../../../../shared/buttons/custom_filter_button.dart';
import '../../../../shared/custom_expansion_tile.dart';

class FilterByDoctorRating extends StatelessWidget {
  const FilterByDoctorRating({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpecialityController>(
      builder: (controller) => CustomExpansionTile(
        title: "Doctor Rating",
        initiallyExpanded: false,
        children: [
          Wrap(
            spacing: 13,
            runSpacing: 10,
            children: List.generate(ratingFilters.length, (index) {
              final item = ratingFilters[index];
              return CustomFilterButton(
                item: item,
                isSelected: controller.selectedDoctorRating == item,
                onTap: () => controller.setSelectedDoctorRating(item),
                isSvg: true,
              );
            }),
          ),
        ],
      ),
    );
  }
}
