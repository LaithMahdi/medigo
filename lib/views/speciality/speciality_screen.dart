import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/speciality_controller.dart';

class SpecialityScreen extends StatelessWidget {
  const SpecialityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SpecialityController());
    return const Scaffold();
  }
}
