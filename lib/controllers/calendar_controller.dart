import 'package:get/get.dart';

class CalendarController extends GetxController {
  int _currentIndex = 0;

  // Getters
  int get currentIndex => _currentIndex;

  void onStatusSelected(int index) {
    _currentIndex = index;
    update();
  }
}
