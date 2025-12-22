import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/data/model/doctor_model.dart';
import 'package:medigo/data/model/patient_model.dart';
import 'package:medigo/main.dart';
import '../data/model/feel_model.dart';
import '../data/model/filter_model.dart';

class PatientController extends GetxController {
  final GlobalKey<FormState> _patientFormKey = GlobalKey<FormState>();
  final TextEditingController _fullName = TextEditingController(
    text: "Laith Mahdi",
  );
  final TextEditingController _email = TextEditingController(
    text: "laith@gmail.com",
  );
  final TextEditingController _phoneNumber = TextEditingController(
    text: "12345678",
  );
  FilterModel? _selectedGender;
  final TextEditingController _age = TextEditingController(text: "24");
  final TextEditingController _detail = TextEditingController();
  late DoctorModel _doctor;
  late FilterModel? _selectedConsultationType;
  late String? _selectedTime;
  late FeelModel? _selectedFee;
  late DateTime? _date;

  // Getters
  GlobalKey<FormState> get patientFormKey => _patientFormKey;
  TextEditingController get fullName => _fullName;
  TextEditingController get email => _email;
  TextEditingController get phoneNumber => _phoneNumber;
  FilterModel? get selectedGender => _selectedGender;
  TextEditingController get age => _age;
  TextEditingController get detail => _detail;

  @override
  void onInit() {
    onLoadArguments();
    super.onInit();
  }

  void onLoadArguments() {
    _doctor = Get.arguments["doctor"];
    _selectedConsultationType = Get.arguments["consultationType"];
    _selectedTime = Get.arguments["time"];
    _selectedFee = Get.arguments["fee"];
    _date = Get.arguments["date"];
    debugPrint(
      "Patient Doctor: ${_doctor.name} \n Consultation Type: ${_selectedConsultationType?.name}  \n Time: $_selectedTime \n Fee: ${_selectedFee?.name} \n Date: $_date",
    );
  }

  void onBooking() {
    // Get.offAllNamed(AppRoute.successAppointment);
    if (_patientFormKey.currentState!.validate()) {
      if (_selectedGender == null) {
        Get.snackbar("Error", "Please select gender");
      } else {
        insertPatient();
      }
    } else {
      debugPrint("Validation Failed");
    }
  }

  void insertPatient() async {
    try {
      PatientModel patient = PatientModel(
        fullName: _fullName.text,
        email: _email.text,
        phoneNumber: int.tryParse(_phoneNumber.text) ?? 0,
        gender: _selectedGender!.value,
        age: int.parse(_age.text),
        detail: _detail.text,
      );
      final response = await supabase!
          .from("patient")
          .insert(patient.toJson())
          .select()
          .single();

      log("Patient inserted: $response");
    } catch (e) {
      debugPrint("Error inserting patient: $e");
    }
  }

  void setSelectedGender(FilterModel item) {
    if (_selectedGender == item) {
      _selectedGender = null;
    } else {
      _selectedGender = item;
    }
    update();
  }

  @override
  void onClose() {
    _fullName.dispose();
    _email.dispose();
    _phoneNumber.dispose();
    _age.dispose();
    _detail.dispose();
    super.onClose();
  }
}
