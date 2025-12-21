import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/core/services/storage_service.dart';
import 'package:medigo/main.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> _formloginKey = GlobalKey<FormState>();
  bool _isObscured = true;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isLoading = false;

  // Getters
  bool get isObscured => _isObscured;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  GlobalKey<FormState> get formloginKey => _formloginKey;
  bool get isLoading => _isLoading;

  void onSubmit() {
    if (_formloginKey.currentState!.validate()) {
      onLogin();
    } else {
      debugPrint("Form is invalid. Please check the input fields.");
    }
  }

  Future<void> onLogin() async {
    try {
      setLoading(true);
      final response = await supabase?.auth.signInWithPassword(
        email: _email.text,
        password: _password.text,
      );
      if (response != null) {
        debugPrint("Login successful: ${response.user?.email}");
        Get.offAllNamed(AppRoute.initial);
        StorageService.to.setBool(Config.sharedPrefTokenKey, true);
      }
      setLoading(false);
    } catch (e) {
      Get.showSnackbar(
        GetSnackBar(
          title: "Login Error",
          message: "An error occurred during login. Please try again.",
          duration: Duration(seconds: 3),
        ),
      );
      debugPrint("Login failed: $e");
      setLoading(false);
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

  void setLoading(bool value) {
    _isLoading = value;
    update();
  }
}
