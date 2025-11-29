import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/shared/custom_range_slider.dart';

import '../../../controllers/speciality_controller.dart';
import '../../../shared/custom_expansion_tile.dart';
import '../../../shared/slider_text_container.dart';
import 'speciality_modal_sheet_bottom_buttons.dart';
import 'speciality_modal_sheet_title.dart';

class SpecialityFilterModalBottomSheet extends GetView<SpecialityController> {
  const SpecialityFilterModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24, 0, 24, 30),
      child: Column(
        children: [
          SpecialityModalSheetTitle(
            title: "Filter - ${controller.speciality.title}",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomExpansionTile(
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
                          Expanded(
                            child: SliderTextContainer(value: "2 000 000"),
                          ),
                        ],
                      ),
                      // VerticalSpacer(10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SpecialityModalSheetBottomButtons(
            onPressedClear: () {},
            onPressedFilter: () {},
          ),
        ],
      ),
    );
  }
}
