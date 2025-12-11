import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/speciality_controller.dart';
import '../../../../data/dummy.dart';
import '../../../../shared/buttons/custom_filter_button.dart';
import '../../../../shared/custom_expansion_tile.dart';

class FilterByExperienceLevel extends StatelessWidget {
  const FilterByExperienceLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpecialityController>(
      builder: (controller) => CustomExpansionTile(
        title: "Experience Level",
        initiallyExpanded: false,
        children: [
          Wrap(
            spacing: 13,
            runSpacing: 10,
            children: List.generate(experienceFilters.length, (index) {
              final item = experienceFilters[index];
              return CustomFilterButton(
                item: item,
                isSelected: controller.selectedExperienceLevel == item,
                onTap: () => controller.setSelectedExperienceLevel(item),
              );
            }),
          ),
        ],
      ),
    );
  }
}
