import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:medigo/controllers/speciality_controller.dart';
import '../../../../core/functions/format_price.dart';
import '../../../../shared/custom_expansion_tile.dart';
import '../../../../shared/custom_range_slider.dart';
import '../../../../shared/slider_text_container.dart';

class FilterByPrice extends StatelessWidget {
  const FilterByPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SpecialityController>(
      builder: (controller) => CustomExpansionTile(
        title: "Fee / Price",
        initiallyExpanded: true,
        onExpansionChanged: (expanded) {},
        children: [
          CustomRangeSlider(
            values: [controller.minPriceChanges, controller.maxPriceChanges],
            min: controller.minPrice,
            max: controller.maxPrice,
            onDragging: (handlerIndex, lowerValue, upperValue) {
              controller.setMinAndMaxPrice(lowerValue, upperValue);
            },
          ),
          Row(
            spacing: 13,
            children: [
              Expanded(
                child: SliderTextContainer(
                  value: formatPrice(controller.minPriceChanges),
                ),
              ),
              Expanded(
                child: SliderTextContainer(
                  value: formatPrice(controller.maxPriceChanges),
                ),
              ),
            ],
          ),
          // VerticalSpacer(10),
        ],
      ),
    );
  }
}
