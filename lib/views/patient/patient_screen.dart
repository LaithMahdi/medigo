import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/patient_controller.dart';
import '../../core/constant/app_color.dart';
import '../../shared/buttons/custom_back_button.dart';
import 'widgets/patient_form.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PatientController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CustomBackButton(),
            title: Text(
              "Patient’s details",
              style: TextStyle(
                fontSize: 16,
                color: AppColor.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SliverToBoxAdapter(child: PatientForm()),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () => controller.onBooking(),
          child: Text("Book Appointment"),
        ),
      ),
    );
  }
}
