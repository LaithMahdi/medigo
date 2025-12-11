import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/core/services/storage_service.dart';
import '../data/dummy.dart';

class OnboardingController extends GetxController {
  final PageController _controller = PageController();
  int _currentPage = 0;

  // Getters
  PageController get controller => _controller;
  int get currentPage => _currentPage;

  bool isLastPage() {
    return _currentPage == onboardingItems.length - 1;
  }

  bool isFirstPage() {
    return _currentPage == 0;
  }

  void nextPage() {
    if (isLastPage()) {
      StorageService.to.setBool(Config.sharedPrefOnboardingKey, true);
      Get.offAllNamed(AppRoute.login);
    } else {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    _controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void incrementPage(int page) {
    _currentPage = page;
    update();
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }
}
