import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/core/services/storage_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final token = StorageService.to.getString(Config.sharedPrefTokenKey);
    if (token != null && token.isNotEmpty) {
      return const RouteSettings(name: AppRoute.initial);
    }

    return null;
  }
}
