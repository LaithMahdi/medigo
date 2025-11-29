import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/core/services/storage_service.dart';

class OnboardingMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (StorageService.to.getBool(Config.sharedPrefOnboardingKey) == true) {
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}
