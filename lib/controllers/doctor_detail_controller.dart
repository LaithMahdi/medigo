import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';

import '../data/model/doctor_model.dart';

class DoctorDetailController extends GetxController {
  late DoctorModel _doctor;

  // Getters
  DoctorModel get doctor => _doctor;

  @override
  void onInit() {
    _doctor = Get.arguments['doctor'];
    debugPrint("Doctor Detail: $_doctor");
    super.onInit();
  }

  onAppointNow() => Get.toNamed(AppRoute.appointment);
}
