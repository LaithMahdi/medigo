import 'package:flutter/material.dart';

class BottomNavigationModel {
  int id;
  String icon;
  Widget page;

  BottomNavigationModel({
    required this.id,
    required this.icon,
    required this.page,
  });
}
