import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/views/splash_screen.dart';

List<GetPage> getPages = [
  GetPage(name: AppRoute.splash, page: () => SplashScreen()),
];
