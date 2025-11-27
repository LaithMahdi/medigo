import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/constant/app_font_family.dart';
import 'package:medigo/router/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/constant/app_color.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Config.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.white,
        fontFamily: AppFontFamily.inter,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 16,
              color: AppColor.white,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: AppColor.button,
            foregroundColor: AppColor.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          scrolledUnderElevation: 0,
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            backgroundColor: AppColor.white,
            foregroundColor: AppColor.black,
            padding: EdgeInsets.all(12),
            shape: OvalBorder(),
            elevation: 10,
          ),
        ),
      ),
      getPages: getPages,
    );
  }
}
