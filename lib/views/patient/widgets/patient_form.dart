import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/controllers/patient_controller.dart';
import 'package:medigo/core/config.dart';

import '../../../core/functions/valid_input.dart';
import '../../../data/dummy.dart';
import '../../../shared/buttons/custom_filter_button.dart';
import '../../../shared/spacer.dart';
import '../../authentification/widgets/auth_input.dart';
import '../../authentification/widgets/auth_label.dart';

class PatientForm extends GetView<PatientController> {
  const PatientForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.patientFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthLabel(label: "Full Name"),
            VerticalSpacer(15),
            AuthInput(
              hintText: "John Doe",
              controller: controller.fullName,
              validator: (value) => validateInput(value, min: 3, max: 80),
            ),
            VerticalSpacer(30),
            AuthLabel(label: "Email"),
            VerticalSpacer(15),
            AuthInput(
              hintText: "user@mail.com",
              controller: controller.email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) =>
                  validateInput(value, min: 8, max: 200, type: InputType.email),
            ),
            VerticalSpacer(30),
            AuthLabel(label: "Phone Number"),
            VerticalSpacer(15),
            AuthInput(
              hintText: "+1234567890",
              controller: controller.phoneNumber,
              keyboardType: TextInputType.phone,
              validator: (value) =>
                  validateInput(value, min: 8, max: 8, type: InputType.number),
            ),
            VerticalSpacer(30),
            AuthLabel(label: "Gender"),
            VerticalSpacer(15),
            GetBuilder<PatientController>(
              builder: (controller) => Row(
                spacing: 10,
                children: List.generate(genderFilters.length, (index) {
                  final item = genderFilters[index];
                  return Expanded(
                    child: CustomFilterButton(
                      item: item,
                      isSelected: controller.selectedGender == item,
                      onTap: () => controller.setSelectedGender(item),
                    ),
                  );
                }),
              ),
            ),
            VerticalSpacer(30),

            AuthLabel(label: "Age"),
            VerticalSpacer(15),
            AuthInput(
              hintText: "Age in years",
              controller: controller.age,
              keyboardType: TextInputType.number,
              validator: (value) =>
                  validateInput(value, min: 1, max: 2, type: InputType.number),
            ),
            VerticalSpacer(30),
            AuthLabel(label: "Detail"),
            VerticalSpacer(15),
            AuthInput(
              hintText: "Patient detail information here ...",
              controller: controller.detail,
              maxLines: 5,
              validator: (value) =>
                  validateInput(value, max: 20000, isRequired: false),
            ),
          ],
        ),
      ),
    );
  }
}
