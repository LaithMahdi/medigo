import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/shared/spacer.dart';
import '../../controllers/speciality_controller.dart';
import '../../core/config.dart';
import '../../shared/buttons/custom_back_button.dart';
import '../../shared/search_row.dart';
import 'widgets/speciality_doctor_list_view.dart';
import 'widgets/speciality_filter_modal_bottom_sheet.dart';
import 'widgets/speciality_search_and_sort.dart';

class SpecialityScreen extends StatelessWidget {
  const SpecialityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SpecialityController());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: CustomBackButton(),
            title: Text(
              controller.speciality.title,
              style: TextStyle(fontSize: 16, color: AppColor.grey1),
            ),
            actions: [
              SvgPicture.asset(
                controller.speciality.image,
                width: 22,
                height: 22,
              ),
              HorizontalSpacer(15),
            ],
          ),
          SliverToBoxAdapter(child: VerticalSpacer(15)),
          SliverToBoxAdapter(
            child: SearchRow(
              controller: TextEditingController(),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => SpecialityFilterModalBottomSheet(),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(child: VerticalSpacer(24)),
          const SliverToBoxAdapter(child: SpecialitySearchAndSort()),
          const SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Config.spacing15),
            sliver: SpecialityDoctorListView(),
          ),
        ],
      ),
    );
  }
}
