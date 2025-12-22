import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/calendar_controller.dart';
import '../../../shared/spacer.dart';
import 'calendar_item_card.dart';

class CalendarViewBody extends StatelessWidget {
  const CalendarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<CalendarController>(
        builder: (controller) => controller.isLoading
            ? Center(child: CircularProgressIndicator())
            : controller.appointments.isEmpty
            ? Column(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 64,
                    color: Colors.grey,
                  ),
                  Text(
                    "No appointments found.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              )
            : ListView.separated(
                itemCount: controller.appointments.length,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  final appointment = controller.appointments[index];
                  return CalendarItemCard(
                    appointment: appointment,
                    onCancel: () =>
                        controller.onUpdateAppointmentStatus(appointment.id!),
                  );
                },
                separatorBuilder: (context, index) => VerticalSpacer(20),
              ),
      ),
    );
  }
}
