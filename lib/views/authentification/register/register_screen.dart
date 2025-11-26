import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/register_controller.dart';
import '../../../core/config.dart';
import '../../../shared/spacer.dart';
import '../widgets/auth_bottom_text_button.dart';
import '../widgets/auth_description.dart';
import '../widgets/auth_title.dart';
import 'widgets/register_view_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: Config.defaultPadding,
              child: Column(
                children: [
                  VerticalSpacer(41),
                  AuthTitle(text: "Create your account"),
                  VerticalSpacer(15),
                  AuthDescription(
                    text: "Sign up to manage your account effortlessly.",
                  ),
                  VerticalSpacer(48),
                  RegisterViewBody(),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 35),
              child: AuthBottomTextButton(
                label: "Already have an account? ",
                subLabel: "Log In",
                onTap: () => controller.navigateToLogin(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
