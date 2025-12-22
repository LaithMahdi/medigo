import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/data/dummy.dart';
import 'package:medigo/data/model/filter_model.dart';

import '../data/model/doctor_model.dart';
import '../data/model/feel_model.dart';

class AppointmentController extends GetxController {
  FilterModel? _selectedConsultationType;
  FilterModel? _selectedAvailability;
  String? _selectedTime;
  late DoctorModel _doctor;
  FeelModel? _selectedFee;
  DateTime? date;

  // Getters
  FilterModel? get selectedConsultationType => _selectedConsultationType;
  FilterModel? get selectedAvailability => _selectedAvailability;
  String? get selectedTime => _selectedTime;
  DoctorModel get doctor => _doctor;
  FeelModel? get selectedFee => _selectedFee;

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

  void selectFee(FeelModel fee) {
    if (_selectedFee == fee) {
      _selectedFee = null;
    } else {
      _selectedFee = fee;
    }
    update();
  }

  void onSelectDate(DateTime selectedDate) {
    date = selectedDate;
    update();
  }

  void onBooking() {
    if (_selectedConsultationType == null) {
      Get.snackbar(
        "Required",
        "Please select a consultation type",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (_selectedTime == null) {
      Get.snackbar(
        "Required",
        "Please select a time",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (date == null) {
      Get.snackbar(
        "Required",
        "Please select a date",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    Get.toNamed(
      AppRoute.patient,
      arguments: {
        "doctor": _doctor,
        "consultationType": _selectedConsultationType,
        "time": _selectedTime,
        "fee": _selectedFee,
        "date": date,
      },
    );
  }
}
