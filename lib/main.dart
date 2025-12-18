import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:medigo/core/config.dart';
import 'package:medigo/core/services/storage_service.dart';
import 'package:medigo/core/theme/app_theme.dart';
import 'package:medigo/router/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

SupabaseClient? supabase;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: Config.supabaseUrlKey,
    anonKey: Config.supabaseAnonKey,
  );
  supabase = Supabase.instance.client;
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
