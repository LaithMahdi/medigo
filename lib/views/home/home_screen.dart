import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/core/constant/app_image.dart';
import 'package:medigo/shared/spacer.dart';

import '../../core/functions/get_greeting_message.dart';
import 'widgets/home_appbar_title.dart';

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
        ],
      ),
    );
  }
}
