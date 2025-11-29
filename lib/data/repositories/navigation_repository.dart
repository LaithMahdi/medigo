import 'package:flutter/material.dart';
import 'package:medigo/core/constant/app_image.dart';
import 'package:medigo/data/model/bottom_navigation_model.dart';
import 'package:medigo/views/home/home_screen.dart';

/// Repository for navigation-related data
/// Provides access to bottom navigation configuration
class NavigationRepository {
  NavigationRepository._();

  /// Get bottom navigation items
  static List<BottomNavigationModel> getBottomNavigationItems() {
    return [
      BottomNavigationModel(
        id: 1,
        icon: AppImage.imagesIconesHome,
        page: const HomeScreen(),
      ),
      BottomNavigationModel(
        id: 2,
        icon: AppImage.imagesIconesHeartFilled,
        page: Container(color: Colors.red), // Placeholder for favorites page
      ),
      BottomNavigationModel(
        id: 3,
        icon: AppImage.imagesIconesCalendar,
        page: Container(
          color: Colors.blue,
        ), // Placeholder for appointments page
      ),
      BottomNavigationModel(
        id: 4,
        icon: AppImage.imagesIconesUser,
        page: Container(color: Colors.brown), // Placeholder for profile page
      ),
    ];
  }
}
