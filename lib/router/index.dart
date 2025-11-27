import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/views/authentification/register/register_screen.dart';
import 'package:medigo/views/onboarding/onboarding_screen.dart';
import 'package:medigo/views/splash_screen.dart';
import '../middleware/auth_middleware.dart';
import '../middleware/onboarding_middleware.dart';
import '../views/authentification/login/login_screen.dart';
import '../views/initial/initial_screen.dart';

List<GetPage> getPages = [
  GetPage(name: AppRoute.splash, page: () => SplashScreen()),
  GetPage(
    name: AppRoute.onboarding,
    page: () => OnboardingScreen(),
    middlewares: [OnboardingMiddleware()],
  ),
  GetPage(
    name: AppRoute.login,
    page: () => LoginScreen(),
    middlewares: [AuthMiddleware()],
  ),
  GetPage(name: AppRoute.register, page: () => RegisterScreen()),
  GetPage(name: AppRoute.initial, page: () => InitialScreen()),
];
