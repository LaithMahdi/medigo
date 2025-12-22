import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/state_manager.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/data/dummy.dart';
import '../../../controllers/speciality_controller.dart';
import 'speciality_modal_sheet_bottom_buttons.dart';
import 'speciality_modal_sheet_title.dart';

class SpecialityModalBottomSheet extends GetView<SpecialityController> {
  const SpecialityModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24, 0, 24, 30),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          SpecialityModalSheetTitle(title: "Sort by"),
          Spacer(),
          GetBuilder<SpecialityController>(
            builder: (controller) => Column(
              children: List.generate(sortByFilters.length, (index) {
                final option = sortByFilters[index];
                return ListTile(
                  leading: Checkbox(
                    value: controller.selectedSortBy == option,
                    onChanged: (value) => controller.setSelectedSortBy(option),
                  ),
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 0,
                  minTileHeight: 50,
                  title: Text(
                    option.name,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey1,
                    ),
                  ),
                );
              }),
            ),
          ),
          Spacer(),
          SpecialityModalSheetBottomButtons(
            onPressedClear: () {},
            onPressedFilter: () {
              Navigator.pop(context);
              controller.onLoadPopularDoctors();
            },
          ),
        ],
      ),
    );
  }
}
