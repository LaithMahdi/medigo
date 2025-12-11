import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../../controllers/speciality_controller.dart';
import '../../../../data/dummy.dart';
import '../../../../shared/buttons/custom_filter_button.dart';
import '../../../../shared/custom_expansion_tile.dart';

class FilterByAvailability extends StatelessWidget {
  const FilterByAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpecialityController>(
      builder: (controller) => CustomExpansionTile(
        title: "Availability",
        initiallyExpanded: false,
        children: [
          Wrap(
            spacing: 13,
            runSpacing: 10,
            children: List.generate(availabilityFilters.length, (index) {
              final item = availabilityFilters[index];
              return CustomFilterButton(
                item: item,
                isSelected: controller.selectedAvailability.contains(item),
                onTap: () => controller.setSelectedAvailability(item),
              );
            }),
          ),
        ],
      ),
    );
  }
}
