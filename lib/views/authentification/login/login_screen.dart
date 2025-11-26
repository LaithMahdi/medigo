import 'package:flutter/material.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/shared/spacer.dart';
import '../widgets/auth_bottom_text_button.dart';
import '../widgets/auth_description.dart';
import '../widgets/auth_title.dart';
import 'widgets/login_divider.dart';
import 'widgets/login_social_media_auth.dart';
import 'widgets/login_view_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: Config.defaultPadding,
              child: Column(
                children: [
                  VerticalSpacer(41),
                  AuthTitle(text: "Go ahead & set up your account"),
                  VerticalSpacer(15),
                  AuthDescription(
                    text:
                        "Welcome back! Please sign in to manage your account.",
                  ),
                  VerticalSpacer(48),
                  LoginViewBody(),
                  VerticalSpacer(48),
                  LoginDivider(),
                  VerticalSpacer(48),
                  LoginSocialMediaAuth(),
                  VerticalSpacer(48),
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
                label: "Don't have an account? ",
                subLabel: "Sign Up",
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
