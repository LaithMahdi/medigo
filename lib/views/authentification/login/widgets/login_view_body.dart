import 'package:flutter/material.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../shared/spacer.dart';
import '../../widgets/auth_input.dart';
import '../../widgets/auth_label.dart';
import '../../widgets/auth_password_eye_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthLabel(label: "Email"),
        VerticalSpacer(15),
        AuthInput(
          hintText: "user@mail.com",
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
        ),
        VerticalSpacer(30),
        AuthLabel(label: "Password"),
        VerticalSpacer(15),
        AuthInput(
          hintText: "********",
          controller: TextEditingController(),
          obscureText: false,
          suffixIcon: AuthPasswordEyeButton(isObscured: true, onPressed: () {}),
        ),
        VerticalSpacer(30),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: AppColor.black,
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        VerticalSpacer(30),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {}, child: Text("Login")),
        ),
      ],
    );
  }
}
