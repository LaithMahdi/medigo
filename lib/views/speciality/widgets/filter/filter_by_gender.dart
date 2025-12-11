import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/speciality_controller.dart';
import '../../../../data/dummy.dart';
import '../../../../shared/buttons/custom_filter_button.dart';
import '../../../../shared/custom_expansion_tile.dart';

class FilterByGender extends StatelessWidget {
  const FilterByGender({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpecialityController>(
      builder: (controller) => CustomExpansionTile(
        title: "Gender",
        initiallyExpanded: false,
        children: [
          Wrap(
            spacing: 13,
            runSpacing: 10,
            children: List.generate(genderFilters.length, (index) {
              final item = genderFilters[index];
              return CustomFilterButton(
                item: item,
                isSelected: controller.selectedGender == item,
                onTap: () => controller.setSelectedGender(item),
              );
            }),
          ),
        ],
      ),
    );
  }
}
