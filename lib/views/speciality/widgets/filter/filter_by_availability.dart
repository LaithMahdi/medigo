import 'package:flutter/material.dart';
import '../../../../data/dummy.dart';
import '../../../../shared/buttons/custom_filter_button.dart';
import '../../../../shared/custom_expansion_tile.dart';

class FilterByAvailability extends StatelessWidget {
  const FilterByAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
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
              isSelected: true,
              onTap: () {},
            );
          }),
        ),
      ],
    );
  }
}
