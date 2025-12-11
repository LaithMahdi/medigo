import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import '../../../../controllers/speciality_controller.dart';
import '../../../../data/dummy.dart';
import '../../../../shared/buttons/custom_filter_button.dart';
import '../../../../shared/custom_expansion_tile.dart';

class FilterByConsultationType extends StatelessWidget {
  const FilterByConsultationType({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpecialityController>(
      builder: (controller) => CustomExpansionTile(
        title: "Consultation Type",
        initiallyExpanded: false,
        children: [
          Wrap(
            spacing: 13,
            runSpacing: 10,
            children: List.generate(consultationTypeFilters.length, (index) {
              final item = consultationTypeFilters[index];
              return CustomFilterButton(
                item: item,
                isSelected: controller.selectedConsultationType == item,
                onTap: () => controller.setSelectedConsultationType(item),
              );
            }),
          ),
        ],
      ),
    );
  }
}
