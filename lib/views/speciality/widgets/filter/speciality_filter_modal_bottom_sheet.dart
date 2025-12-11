import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/speciality_controller.dart';
import '../speciality_modal_sheet_bottom_buttons.dart';
import '../speciality_modal_sheet_title.dart';
import 'filter_by_availability.dart';
import 'filter_by_consultation_type.dart';
import 'filter_by_doctor_rating.dart';
import 'filter_by_experience_level.dart';
import 'filter_by_gender.dart';
import 'filter_by_price.dart';

class SpecialityFilterModalBottomSheet extends GetView<SpecialityController> {
  const SpecialityFilterModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24, 0, 24, 30),
      height: MediaQuery.of(context).size.height * 0.75,
      child: Column(
        children: [
          SpecialityModalSheetTitle(
            title: "Filter - ${controller.speciality.title}",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 23,
                children: [
                  FilterByPrice(),
                  FilterByAvailability(),
                  FilterByConsultationType(),
                  FilterByGender(),
                  FilterByExperienceLevel(),
                  FilterByDoctorRating(),
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
