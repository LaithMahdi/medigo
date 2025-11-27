import 'package:get/get.dart';

class InitialController extends GetxController {
  int _currentPage = 0;

  // Getters
  int get currentPage => _currentPage;

  void setCurrentPage(int index) {
    _currentPage = index;
    update();
  }
}
