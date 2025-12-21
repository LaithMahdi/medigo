import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/register_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_image.dart';
import '../../../../shared/spacer.dart';
import '../../widgets/auth_provider_button.dart';

class RegisterToggleButton extends StatelessWidget {
  const RegisterToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (controller) => Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: AppColor.grey3,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Expanded(
              child: AuthProviderButton(
                label: "Phone",
                icon: AppImage.imagesIconesCall,
                isSelected: controller.isRegisterByPhone ? true : false,
                onTap: () => controller.onToggleRegisterMethod(true),
              ),
            ),
            HorizontalSpacer(11),
            Expanded(
              child: AuthProviderButton(
                label: "E-mail",
                icon: AppImage.imagesIconesMessaging,
                isSelected: controller.isRegisterByPhone ? false : true,
                onTap: () => controller.onToggleRegisterMethod(false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
