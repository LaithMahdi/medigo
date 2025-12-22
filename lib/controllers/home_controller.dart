import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/data/model/doctor_model.dart';
import 'package:medigo/data/model/speciality_model.dart';
import 'package:medigo/main.dart';

class HomeController extends GetxController {
  final List<SpecialityModel> _specialities = [];
  bool _isLoading = false;
  bool _isLoadingPopularDoctors = false;
  final List<DoctorModel> _popularDoctors = [];
  final List<DoctorModel> _onlinesDoctors = [];
  bool _isLoadingOnlinesDoctors = false;

  // Getters
  List<SpecialityModel> get specialities => _specialities;
  bool get isLoading => _isLoading;
  bool get isLoadingPopularDoctors => _isLoadingPopularDoctors;
  List<DoctorModel> get popularDoctors => _popularDoctors;
  List<DoctorModel> get onlinesDoctors => _onlinesDoctors;
  bool get isLoadingOnlinesDoctors => _isLoadingOnlinesDoctors;

  @override
  void onInit() {
    onLoadData();
    onLoadPopularDoctors();
    onLoadOnlineDoctors();
    super.onInit();
  }

  Future<void> onLoadData() async {
    try {
      setLoading(true);
      final data = await supabase!
          .from('speciality')
          .select('*')
          .eq('is_active', true);
      for (var element in data) {
        _specialities.add(SpecialityModel.fromJson(element));
      }

      setLoading(false);
    } catch (e) {
      debugPrint("Error loading data: $e");
      setLoading(false);
    }
  }

  Future<void> onLoadPopularDoctors() async {
    try {
      setLoadingPopularDoctors(true);
      final data = await supabase!
          .from('doctor')
          .select('*, spec:speciality!inner(*)')
          .limit(5);

      for (var element in data) {
        _popularDoctors.add(DoctorModel.fromJson(element));
      }
      setLoadingPopularDoctors(false);
      (false);
    } catch (e) {
      debugPrint("Error loading Dcotor: $e");
      setLoadingPopularDoctors(false);
      (false);
    }
  }

  Future<void> onLoadOnlineDoctors() async {
    try {
      setLoadingOnlinesDoctors(true);
      final data = await supabase!
          .from('doctor')
          .select('*, spec:speciality!inner(*)')
          .eq("status", "online")
          .limit(5);

      for (var element in data) {
        _onlinesDoctors.add(DoctorModel.fromJson(element));
      }
      setLoadingOnlinesDoctors(false);
      (false);
    } catch (e) {
      debugPrint("Error loading online Dcotor: $e");
      setLoadingOnlinesDoctors(false);
      (false);
    }
  }

  void onNavigateToSpeciality(SpecialityModel item) {
    Get.toNamed(AppRoute.speciality, arguments: {"speciality": item});
  }

  void onDetailView(DoctorModel doctor) =>
      Get.toNamed(AppRoute.doctorDetail, arguments: {"doctor": doctor});

  void setLoading(bool value) {
    _isLoading = value;
    update();
  }

  void setLoadingPopularDoctors(bool value) {
    _isLoadingPopularDoctors = value;
    update();
  }

  void setLoadingOnlinesDoctors(bool value) {
    _isLoadingOnlinesDoctors = value;
    update();
  }
}
