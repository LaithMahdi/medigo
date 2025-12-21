import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/register_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../../shared/spacer.dart';
import '../../widgets/auth_input.dart';
import '../../widgets/auth_label.dart';
import '../../widgets/auth_password_eye_button.dart';
import 'register_provider_input.dart';

class RegisterViewBody extends GetView<RegisterController> {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formRegisterKey,
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
          RegisterProviderInput(),
          VerticalSpacer(30),
          AuthLabel(label: "Password"),
          VerticalSpacer(15),
          GetBuilder<RegisterController>(
            builder: (controller) => AuthInput(
              hintText: "********",
              controller: controller.password,
              obscureText: controller.isObscured,
              suffixIcon: AuthPasswordEyeButton(
                isObscured: controller.isObscured,
                onPressed: () => controller.togglePasswordVisibility(),
              ),
              validator: (value) => validateInput(
                value,
                min: 8,
                max: 150,
                type: InputType.password,
              ),
            ),
          ),
          VerticalSpacer(30),
          AuthLabel(label: "Confirm Password"),
          VerticalSpacer(15),
          GetBuilder<RegisterController>(
            builder: (controller) => AuthInput(
              hintText: "********",
              controller: controller.confirmPassword,
              obscureText: controller.isObscuredConfirm,
              suffixIcon: AuthPasswordEyeButton(
                isObscured: controller.isObscuredConfirm,
                onPressed: () => controller.toggleConfirmPasswordVisibility(),
              ),
              validator: (value) =>
                  validateConfirmPassword(value, controller.password.text),
            ),
          ),

          VerticalSpacer(30),
          GetBuilder<RegisterController>(
            builder: (controller) => SizedBox(
              width: double.infinity,
              child: controller.isLoading
                  ? FittedBox(
                      fit: BoxFit.scaleDown,
                      child: CircularProgressIndicator(color: AppColor.primary),
                    )
                  : ElevatedButton(
                      onPressed: () => controller.onSubmit(),
                      child: Text("Register"),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
