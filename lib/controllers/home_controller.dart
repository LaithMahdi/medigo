import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/data/model/speciality_model.dart';

class HomeController extends GetxController {
  void onNavigateToSpeciality(SpecialityModel item) {
    Get.toNamed(AppRoute.speciality, arguments: {"speciality": item});
  }
}
