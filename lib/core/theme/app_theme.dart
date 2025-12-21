import 'package:flutter/material.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/core/constant/app_font_family.dart';

/// App theme configuration
/// Centralizes all theme-related configurations for better maintainability
class AppTheme {
  AppTheme._();

  /// Light theme configuration
  static ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: AppColor.white,
    fontFamily: AppFontFamily.inter,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
    elevatedButtonTheme: _elevatedButtonTheme,
    appBarTheme: _appBarTheme,
    iconButtonTheme: _iconButtonTheme,
    checkboxTheme: _checkboxTheme,
    bottomSheetTheme: _bottomSheetTheme,
    tabBarTheme: TabBarThemeData(indicatorColor: AppColor.primary),
  );

  /// Elevated button theme
  static ElevatedButtonThemeData get _elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 16,
            color: AppColor.white,
            fontWeight: FontWeight.w600,
          ),
          backgroundColor: AppColor.button,
          foregroundColor: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
        ),
      );

  /// AppBar theme
  static AppBarTheme get _appBarTheme => const AppBarTheme(
    backgroundColor: AppColor.white,
    elevation: 0,
    shadowColor: Colors.transparent,
    scrolledUnderElevation: 0,
  );

  /// Icon button theme
  static IconButtonThemeData get _iconButtonTheme => IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: AppColor.white,
      foregroundColor: AppColor.black,
      padding: const EdgeInsets.all(12),
      shape: const OvalBorder(),
      elevation: 10,
    ),
  );

  /// Checkbox theme
  static CheckboxThemeData get _checkboxTheme => CheckboxThemeData(
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColor.primary;
      }
      return AppColor.grey2;
    }),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    side: WidgetStateBorderSide.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const BorderSide(color: AppColor.primary, width: 2);
      }
      return const BorderSide(color: AppColor.grey2, width: 2);
    }),
    checkColor: WidgetStateProperty.all(AppColor.white),
  );

  /// Bottom sheet theme
  static BottomSheetThemeData get _bottomSheetTheme => BottomSheetThemeData(
    backgroundColor: AppColor.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    showDragHandle: true,
    dragHandleColor: AppColor.grey2,
    dragHandleSize: const Size(100, 6),
  );
}
