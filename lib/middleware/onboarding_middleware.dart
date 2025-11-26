import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/main.dart';

class OnboardingMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref?.getBool(Config.sharedPrefOnboardingKey) == true) {
      return RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}
