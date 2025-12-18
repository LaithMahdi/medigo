import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/shared/spacer.dart';
import '../../controllers/calendar_controller.dart';
import 'widgets/calendar_item_card.dart';
import 'widgets/calendar_status_section.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CalendarController());
    return Scaffold(
      body: Padding(
        padding: Config.defaultPadding,
        child: Column(
          children: [
            VerticalSpacer(30),
            CalendarStatusSection(),
            VerticalSpacer(32),
            Expanded(
              child: ListView.separated(
                itemCount: 15,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return CalendarItemCard();
                },
                separatorBuilder: (context, index) => VerticalSpacer(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
