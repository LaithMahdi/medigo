import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/services/storage_service.dart';
import 'package:medigo/core/theme/app_theme.dart';
import 'package:medigo/router/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize services
  await Get.putAsync(() => StorageService().init());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Config.appName,
      theme: AppTheme.lightTheme,
      getPages: getPages,
    );
  }
}
