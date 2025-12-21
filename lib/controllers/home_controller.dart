import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/data/model/speciality_model.dart';
import 'package:medigo/main.dart';

class HomeController extends GetxController {
  final List<SpecialityModel> _specialities = [];
  bool _isLoading = false;

  // Getters
  List<SpecialityModel> get specialities => _specialities;
  bool get isLoading => _isLoading;

  @override
  void onInit() {
    onLoadData();
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

  void onNavigateToSpeciality(SpecialityModel item) {
    Get.toNamed(AppRoute.speciality, arguments: {"speciality": item});
  }

  void onDetailView() => Get.toNamed(AppRoute.doctorDetail);

  void setLoading(bool value) {
    _isLoading = value;
    update();
  }
}
