import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  // Keys
  static String supabaseUrlKey = dotenv.get("SUPABASE_URL");
  static String supabaseAnonKey = dotenv.get("SUPABASE_ANON_KEY");
}
