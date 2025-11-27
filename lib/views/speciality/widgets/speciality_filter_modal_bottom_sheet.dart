import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/speciality_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../shared/custom_expansion_tile.dart';
import '../../../shared/spacer.dart';
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
                    children: [],
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
