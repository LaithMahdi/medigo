import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> _formloginKey = GlobalKey<FormState>();
  bool _isObscured = true;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // Getters
  bool get isObscured => _isObscured;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  GlobalKey<FormState> get formloginKey => _formloginKey;

  void onSubmit() {
    if (_formloginKey.currentState!.validate()) {
      debugPrint("Form is valid. Proceed with login.");
    } else {
      debugPrint("Form is invalid. Please check the input fields.");
    }
  }

  void navigateToRegister() {
    // TODO: Implement navigation to the registration screen
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
}
