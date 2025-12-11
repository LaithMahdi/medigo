import 'package:get/get.dart';
import 'package:medigo/data/model/filter_model.dart';

class AppointmentController extends GetxController {
  FilterModel? _selectedConsultationType;
  FilterModel? _selectedAvailability;
  String? _selectedTime;
  // Getters
  FilterModel? get selectedConsultationType => _selectedConsultationType;
  FilterModel? get selectedAvailability => _selectedAvailability;
  String? get selectedTime => _selectedTime;

  void selectConsultationType(FilterModel filter) {
    if (_selectedConsultationType == filter) {
      _selectedConsultationType = null;
    } else {
      _selectedConsultationType = filter;
    }
    update();
  }

  void selectAvailability(FilterModel filter) {
    if (_selectedAvailability == filter) {
      _selectedAvailability = null;
    } else {
      _selectedAvailability = filter;
    }
    update();
  }

  void selectTime(String time) {
    if (_selectedTime == time) {
      _selectedTime = null;
    } else {
      _selectedTime = time;
    }
    update();
  }

  void onBooking() {}
}
