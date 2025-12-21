import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/register_controller.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../../shared/spacer.dart';
import '../../widgets/auth_input.dart';
import '../../widgets/auth_label.dart';

class RegisterProviderInput extends StatelessWidget {
  const RegisterProviderInput({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthLabel(
            label: controller.isRegisterByPhone ? "Phone Number" : "Email",
          ),
          VerticalSpacer(15),
          controller.isRegisterByPhone
              ? AuthInput(
                  hintText: "+1234567890",
                  controller: controller.phoneNumber,
                  keyboardType: TextInputType.phone,
                  validator: (value) => validateInput(
                    value,
                    min: 8,
                    max: 8,
                    type: InputType.number,
                  ),
                )
              : AuthInput(
                  hintText: "user@mail.com",
                  controller: controller.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => validateInput(
                    value,
                    min: 8,
                    max: 200,
                    type: InputType.email,
                  ),
                ),
        ],
      ),
    );
  }
}
