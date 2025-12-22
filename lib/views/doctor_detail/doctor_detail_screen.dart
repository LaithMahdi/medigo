import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_image.dart';
import '../../controllers/doctor_detail_controller.dart';
import '../../core/constant/app_color.dart';
import '../../shared/buttons/custom_back_button.dart';
import '../../shared/spacer.dart';
import 'widgets/doctor_detail_description.dart';
import 'widgets/doctor_detail_image.dart';
import 'widgets/doctor_detail_info.dart';
import 'widgets/doctor_detail_stat_section.dart';
import 'widgets/doctor_detail_working_hours.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DoctorDetailController());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CustomBackButton(),
            title: Text(
              controller.doctor.name,
              style: TextStyle(
                fontSize: 16,
                color: AppColor.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              SvgPicture.asset(
                AppImage.imagesIconesHeart,
                width: 22,
                height: 22,
              ),
              HorizontalSpacer(15),
            ],
          ),
          SliverToBoxAdapter(child: VerticalSpacer(19)),
          SliverToBoxAdapter(child: DoctorDetailImage()),
          SliverToBoxAdapter(child: VerticalSpacer(19)),
          SliverToBoxAdapter(child: DoctorDetailInfo()),
          SliverToBoxAdapter(child: VerticalSpacer(19)),
          SliverToBoxAdapter(child: DoctorDetailStatSection()),
          SliverToBoxAdapter(child: VerticalSpacer(19)),
          SliverToBoxAdapter(child: DoctorDetailDescription()),
          SliverToBoxAdapter(child: VerticalSpacer(19)),
          SliverToBoxAdapter(child: DoctorDetailWorkingHours()),
          SliverToBoxAdapter(child: VerticalSpacer(19)),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () => controller.onAppointNow(),
          child: Text("Book Appointment"),
        ),
      ),
    );
  }
}
