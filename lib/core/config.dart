import 'package:flutter/material.dart';

/// App-wide configuration constants
/// Centralizes configuration values for consistency
class Config {
  Config._();

  // ==================== Padding & Spacing ====================

  static const EdgeInsets defaultPadding = EdgeInsets.all(24);
  static const double spacing15 = 15.0;
  static const double spacing24 = 24.0;

  // ==================== App Info ====================

  static const String appName = "Medigo";

  // ==================== SharedPreferences Keys ====================

  static const String sharedPrefOnboardingKey = "onboarding_completed";
  static const String sharedPrefTokenKey = "auth_token";
}
