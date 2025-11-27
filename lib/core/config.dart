import 'package:flutter/material.dart';

import '../shared/spacer.dart';

class Config {
  Config._();

  static EdgeInsets get defaultPadding => const EdgeInsets.all(24);
  static String get appName => "Medigo";
  static const String sharedPrefOnboardingKey = "onboarding_completed";
  static const String sharedPrefTokenKey = "auth_token";
  static const double spacing15 = 15;
  static Widget get spaceWidget => VerticalSpacer(24);
}
