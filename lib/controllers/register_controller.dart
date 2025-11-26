import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> _formRegisterKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  bool _isObscured = true;
  bool _isObscuredConfirm = true;

  // Getters
  GlobalKey<FormState> get formRegisterKey => _formRegisterKey;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  TextEditingController get fullName => _fullName;
  TextEditingController get phoneNumber => _phoneNumber;
  TextEditingController get confirmPassword => _confirmPassword;
  bool get isObscured => _isObscured;
  bool get isObscuredConfirm => _isObscuredConfirm;

  void onSubmit() {
    if (_formRegisterKey.currentState!.validate()) {
      debugPrint("form is valid");
    } else {
      debugPrint("form not valid");
    }
  }

  void togglePasswordVisibility() {
    _isObscured = !_isObscured;
    update();
  }

  void toggleConfirmPasswordVisibility() {
    _isObscuredConfirm = !_isObscuredConfirm;
    update();
  }

  void navigateToLogin() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onClose() {
    _email.dispose();
    _password.dispose();
    _fullName.dispose();
    _phoneNumber.dispose();
    _confirmPassword.dispose();
    super.onClose();
  }
}
