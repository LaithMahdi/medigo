import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/data/dummy.dart';
import 'package:medigo/data/model/filter_model.dart';

import '../data/model/doctor_model.dart';

class AppointmentController extends GetxController {
  FilterModel? _selectedConsultationType;
  FilterModel? _selectedAvailability;
  String? _selectedTime;
  late DoctorModel _doctor;
  // Getters
  FilterModel? get selectedConsultationType => _selectedConsultationType;
  FilterModel? get selectedAvailability => _selectedAvailability;
  String? get selectedTime => _selectedTime;
  DoctorModel get doctor => _doctor;

  @override
  void onInit() {
    _doctor = Get.arguments["doctor"];
    debugPrint("Appointment Doctor: $_doctor");
    _selectedAvailability = availabilityFilters.first;
    _selectedConsultationType = consultationTypeFilters.first;
    super.onInit();
  }

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

  void onBooking() {
    Get.toNamed(AppRoute.patient);
  }
}
