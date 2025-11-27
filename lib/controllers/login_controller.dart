import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/main.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> _formloginKey = GlobalKey<FormState>();
  bool _isObscured = true;
  final TextEditingController _email = TextEditingController(
    text: "Mahdi@gmail.com",
  );
  final TextEditingController _password = TextEditingController(
    text: "123456789",
  );

  // Getters
  bool get isObscured => _isObscured;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  GlobalKey<FormState> get formloginKey => _formloginKey;

  void onSubmit() {
    if (_formloginKey.currentState!.validate()) {
      debugPrint("Form is valid. Proceed with login.");
      Get.offAllNamed(AppRoute.initial);
      sharedPref?.setBool(Config.sharedPrefTokenKey, true);
    } else {
      debugPrint("Form is invalid. Please check the input fields.");
    }
  }

  void navigateToRegister() {
    Get.toNamed(AppRoute.register);
  }

  void loginWithGoogle() {
    // TODO: Implement Google login functionality
  }

  void loginWithFacebook() {
    // TODO: Implement Facebook login functionality
  }

  void forgotPassword() {
    // TODO: Implement forgot password functionality
  }

  void togglePasswordVisibility() {
    _isObscured = _isObscured ? false : true;
    update();
  }

  @override
  void onClose() {
    _email.dispose();
    _password.dispose();
    super.onClose();
  }
}
