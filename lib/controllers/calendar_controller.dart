import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/data/model/appointment_model.dart';

import '../main.dart';

class CalendarController extends GetxController {
  int _currentIndex = 0;
  final List<AppointmentModel> _appointments = [];
  bool _isLoading = false;

  // Getters
  int get currentIndex => _currentIndex;
  List<AppointmentModel> get appointments => _appointments;
  bool get isLoading => _isLoading;

  @override
  void onInit() {
    onLoadData();
    super.onInit();
  }

  void onStatusSelected(int index) {
    _currentIndex = index;
    onLoadData();
    update();
  }

  Future<void> onLoadData() async {
    try {
      _appointments.clear();
      setLoading(true);
      final data = await supabase!
          .from('appointment')
          .select('*, doctor:doctor_id(*, spec:speciality!inner(*))')
          .eq('user_id', supabase!.auth.currentUser!.id)
          .eq(
            "status",
            _currentIndex == 0
                ? "pending"
                : _currentIndex == 1
                ? "completed"
                : "cancelled",
          );

      for (var element in data) {
        _appointments.add(AppointmentModel.fromJson(element));
      }
      setLoading(false);
    } catch (e) {
      debugPrint("Error loading data: $e");
      setLoading(false);
    }
  }

  Future<void> onUpdateAppointmentStatus(int appointmentId) async {
    try {
      setLoading(true);
      await supabase!
          .from('appointment')
          .update({'status': 'cancelled'})
          .eq('id', appointmentId);

      log("Appointment $appointmentId updated to statu");
      await onLoadData();
      setLoading(false);
    } catch (e) {
      debugPrint("Error updating appointment status: $e");
      setLoading(false);
    }
  }

  void setLoading(bool value) {
    _isLoading = value;
    update();
  }
}
