import 'package:flutter/material.dart';
import '../../../../shared/custom_expansion_tile.dart';
import '../../../../shared/custom_range_slider.dart';
import '../../../../shared/slider_text_container.dart';

class FilterByPrice extends StatelessWidget {
  const FilterByPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: "Fee / Price",
      initiallyExpanded: true,
      onExpansionChanged: (expanded) {},
      children: [
        CustomRangeSlider(
          values: [50, 300],
          min: 0,
          max: 500,
          onDragging: (handlerIndex, lowerValue, upperValue) {},
        ),
        Row(
          spacing: 13,
          children: [
            Expanded(child: SliderTextContainer(value: "0 000")),
            Expanded(child: SliderTextContainer(value: "2 000 000")),
          ],
        ),
        // VerticalSpacer(10),
      ],
    );
  }
}
