import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medigo/core/constant/app_image.dart';
import 'package:medigo/shared/spacer.dart';
import 'widgets/home_appbar_title.dart';
import 'widgets/home_available_doctor_section.dart';
import 'widgets/home_cover_sliding.dart';
import 'widgets/home_popular_doctor_section.dart';
import 'widgets/home_search_row.dart';
import 'widgets/home_see_more_button.dart';
import 'widgets/home_speciality_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: HomeAppBarTitle(),
            toolbarHeight: 80,
            actions: [
              IconButton.filled(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppImage.imagesIconesNotification,
                  width: 24,
                  height: 24,
                ),
                style: IconButton.styleFrom(minimumSize: Size(50, 50)),
              ),
              HorizontalSpacer(15),
            ],
          ),
          SliverToBoxAdapter(child: HomeSearchRow()),
          SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverToBoxAdapter(child: HomeCoverSliding()),
          SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverToBoxAdapter(
            child: HomeSeeMoreButton(title: "Doctor Specialties", onTap: () {}),
          ),
          SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverToBoxAdapter(child: HomeSpecialitySection()),

          SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverToBoxAdapter(
            child: HomeSeeMoreButton(title: "Popular Doctors", onTap: () {}),
          ),
          SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverToBoxAdapter(child: HomePopularDoctorSection()),
          SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverToBoxAdapter(
            child: HomeSeeMoreButton(title: "Available Doctors", onTap: () {}),
          ),
          SliverToBoxAdapter(child: VerticalSpacer(24)),
          SliverToBoxAdapter(child: HomeAvailableDoctorSection()),
          SliverToBoxAdapter(child: VerticalSpacer(24)),
        ],
      ),
    );
  }
}
