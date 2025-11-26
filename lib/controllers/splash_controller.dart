import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAllNamed(AppRoute.onboarding);
    });
    super.onInit();
  }
}
