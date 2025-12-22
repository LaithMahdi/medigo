import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import '../data/model/doctor_model.dart';
import '../data/model/patient_model.dart';

class SuccessAppointmentController extends GetxController {
  late DoctorModel _doctor;
  late PatientModel _patient;
  late String _time;
  late DateTime _date;

  // Getters
  DoctorModel get doctor => _doctor;
  PatientModel get patient => _patient;
  String get time => _time;
  DateTime get date => _date;

  @override
  void onInit() {
    onLoadArguments();
    super.onInit();
  }

  void onLoadArguments() {
    _doctor = Get.arguments["doctor"];
    _patient = Get.arguments["patient"];
    _time = Get.arguments["time"];
    _date = Get.arguments["date"];
    debugPrint(
      "Success Appointment Doctor: ${_doctor.name} \n Patient: ${_patient.fullName}  \n Time: $_time \n Date: $_date",
    );
  }

  void onBooking() {
    Get.offAllNamed(AppRoute.initial);
  }
}
