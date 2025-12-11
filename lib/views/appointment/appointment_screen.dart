import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../core/constant/app_color.dart';
import '../../shared/buttons/custom_back_button.dart';
import 'widgets/appointment_time_line.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CustomBackButton(),
            title: Text(
              "New Appointment",
              style: TextStyle(
                fontSize: 16,
                color: AppColor.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SliverToBoxAdapter(child: AppointmentTimeLine()),
        ],
      ),
    );
  }
}
