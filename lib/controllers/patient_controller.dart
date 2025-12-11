import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../data/model/filter_model.dart';

class PatientController extends GetxController {
  final GlobalKey<FormState> _patientFormKey = GlobalKey<FormState>();
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  FilterModel? _selectedGender;
  final TextEditingController _age = TextEditingController();
  final TextEditingController _detail = TextEditingController();

  // Getters
  GlobalKey<FormState> get patientFormKey => _patientFormKey;
  TextEditingController get fullName => _fullName;
  TextEditingController get email => _email;
  TextEditingController get phoneNumber => _phoneNumber;
  FilterModel? get selectedGender => _selectedGender;
  TextEditingController get age => _age;
  TextEditingController get detail => _detail;

  void onBooking() {}

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
