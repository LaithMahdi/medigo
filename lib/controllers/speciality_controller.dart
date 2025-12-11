import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/data/model/filter_model.dart';
import 'package:medigo/data/model/speciality_model.dart';

class SpecialityController extends GetxController {
  late SpecialityModel _speciality;
  final List<FilterModel> _selectedAvailability = [];
  FilterModel? _selectedConsultationType;
  FilterModel? _selectedGender;
  FilterModel? _selectedExperienceLevel;
  FilterModel? _selectedDoctorRating;
  final double _minPrice = 0;
  final double _maxPrice = 1000;
  double _minPriceChanges = 0;
  double _maxPriceChanges = 1000;

  // Getters
  SpecialityModel get speciality => _speciality;
  List<FilterModel> get selectedAvailability => _selectedAvailability;
  FilterModel? get selectedConsultationType => _selectedConsultationType;
  FilterModel? get selectedGender => _selectedGender;
  FilterModel? get selectedExperienceLevel => _selectedExperienceLevel;
  FilterModel? get selectedDoctorRating => _selectedDoctorRating;
  double get minPrice => _minPrice;
  double get maxPrice => _maxPrice;
  double get minPriceChanges => _minPriceChanges;
  double get maxPriceChanges => _maxPriceChanges;

  @override
  void onInit() {
    _speciality = Get.arguments["speciality"];
    debugPrint("Speciality: $_speciality");
    super.onInit();
  }

  void setSelectedAvailability(FilterModel availability) {
    if (_selectedAvailability.contains(availability)) {
      _selectedAvailability.remove(availability);
    } else {
      _selectedAvailability.add(availability);
    }
    update();
  }

  void setSelectedConsultationType(FilterModel consultationType) {
    if (_selectedConsultationType == consultationType) {
      _selectedConsultationType = null;
    } else {
      _selectedConsultationType = consultationType;
    }
    update();
  }

  void setSelectedGender(FilterModel gender) {
    if (_selectedGender == gender) {
      _selectedGender = null;
    } else {
      _selectedGender = gender;
    }
    update();
  }

  void setSelectedExperienceLevel(FilterModel experienceLevel) {
    if (_selectedExperienceLevel == experienceLevel) {
      _selectedExperienceLevel = null;
    } else {
      _selectedExperienceLevel = experienceLevel;
    }
    update();
  }

  void setSelectedDoctorRating(FilterModel doctorRating) {
    if (_selectedDoctorRating == doctorRating) {
      _selectedDoctorRating = null;
    } else {
      _selectedDoctorRating = doctorRating;
    }
    update();
  }

  void setMinAndMaxPrice(double min, double max) {
    _minPriceChanges = min;
    _maxPriceChanges = max;
    update();
  }
}
