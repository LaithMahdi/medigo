import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/data/model/speciality_model.dart';

class SpecialityController extends GetxController {
  late SpecialityModel _speciality;

  // Getters
  SpecialityModel get speciality => _speciality;

  @override
  void onInit() {
    _speciality = Get.arguments["speciality"];
    debugPrint("Speciality: $_speciality");
    super.onInit();
  }
}
