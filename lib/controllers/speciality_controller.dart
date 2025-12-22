import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medigo/core/constant/app_route.dart';
import 'package:medigo/data/model/doctor_model.dart';
import 'package:medigo/data/model/filter_model.dart';
import 'package:medigo/data/model/speciality_model.dart';
import 'package:medigo/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SpecialityController extends GetxController {
  late SpecialityModel _speciality;
  FilterModel? _selectedAvailability;
  FilterModel? _selectedConsultationType;
  FilterModel? _selectedGender;
  FilterModel? _selectedExperienceLevel;
  FilterModel? _selectedDoctorRating;
  final double _minPrice = 0;
  final double _maxPrice = 400;
  double _minPriceChanges = 0;
  double _maxPriceChanges = 400;
  bool _isLoading = false;
  final List<DoctorModel> _doctors = [];
  FilterModel? _selectedSortBy;
  final TextEditingController _search = TextEditingController();

  // Getters
  SpecialityModel get speciality => _speciality;
  FilterModel? get selectedAvailability => _selectedAvailability;
  FilterModel? get selectedConsultationType => _selectedConsultationType;
  FilterModel? get selectedGender => _selectedGender;
  FilterModel? get selectedExperienceLevel => _selectedExperienceLevel;
  FilterModel? get selectedDoctorRating => _selectedDoctorRating;
  double get minPrice => _minPrice;
  double get maxPrice => _maxPrice;
  double get minPriceChanges => _minPriceChanges;
  double get maxPriceChanges => _maxPriceChanges;
  bool get isLoading => _isLoading;
  List<DoctorModel> get doctors => _doctors;
  FilterModel? get selectedSortBy => _selectedSortBy;
  TextEditingController get search => _search;

  @override
  void onInit() {
    _speciality = Get.arguments["speciality"];
    _search.addListener(() {
      onLoadPopularDoctors();
    });
    debugPrint("Speciality: $_speciality");
    onLoadPopularDoctors();
    super.onInit();
  }

  Future<void> onLoadPopularDoctors() async {
    try {
      _doctors.clear();
      setLoading(true);

      var query = supabase!
          .from('doctor')
          .select('*')
          .eq("speciality", _speciality.id);

      if (_selectedAvailability != null) {
        query = query.eq("availability", _selectedAvailability!.value);
      }

      if (_selectedGender != null) {
        query = query.eq("gender", _selectedGender!.value);
      }

      if (_minPriceChanges > _minPrice || _maxPriceChanges < _maxPrice) {
        query = query
            .gte("price", _minPriceChanges)
            .lte("price", _maxPriceChanges);
      }

      if (_search.text.isNotEmpty) {
        query = query.ilike("full_name", "%${_search.text}%");
      }

      PostgrestTransformBuilder<PostgrestList> sortedQuery;

      switch (_selectedSortBy?.value) {
        case "name_asc":
          sortedQuery = query.order("full_name", ascending: true);
          break;

        case "experience_asc":
          sortedQuery = query.order("experience_number", ascending: true);
          break;

        case "rating_asc":
          sortedQuery = query.order("rating_number", ascending: true);
          break;

        case "fee_asc":
          sortedQuery = query.order("price", ascending: true);
          break;

        case "availability":
          sortedQuery = query.order("availability", ascending: true);
          break;

        default:
          sortedQuery = query.order("full_name", ascending: true);
      }

      final data = await sortedQuery;

      for (var element in data) {
        _doctors.add(DoctorModel.fromJson(element));
      }

      setLoading(false);
    } catch (e) {
      debugPrint("Error loading Doctor: $e");
      setLoading(false);
    }
  }

  void setSelectedAvailability(FilterModel availability) {
    if (_selectedAvailability == availability) {
      _selectedAvailability = null;
    } else {
      _selectedAvailability = availability;
    }
    update();
  }

  void setSelectedConsultationType(FilterModel consultationType) {
    if (_selectedConsultationType == consultationType) {
      _selectedConsultationType = null;
    } else {
      _selectedConsultationType = consultationType;
    }
    update();
  }

  void setSelectedGender(FilterModel gender) {
    if (_selectedGender == gender) {
      _selectedGender = null;
    } else {
      _selectedGender = gender;
    }
    update();
  }

  void setSelectedExperienceLevel(FilterModel experienceLevel) {
    if (_selectedExperienceLevel == experienceLevel) {
      _selectedExperienceLevel = null;
    } else {
      _selectedExperienceLevel = experienceLevel;
    }
    update();
  }

  void setSelectedDoctorRating(FilterModel doctorRating) {
    if (_selectedDoctorRating == doctorRating) {
      _selectedDoctorRating = null;
    } else {
      _selectedDoctorRating = doctorRating;
    }
    update();
  }

  void setMinAndMaxPrice(double min, double max) {
    _minPriceChanges = min;
    _maxPriceChanges = max;
    update();
  }

  void onDetailView() => Get.toNamed(AppRoute.doctorDetail);

  void setLoading(bool value) {
    _isLoading = value;
    update();
  }

  void setSelectedSortBy(FilterModel sortBy) {
    if (_selectedSortBy == sortBy) {
      _selectedSortBy = null;
    } else {
      _selectedSortBy = sortBy;
    }
    onLoadPopularDoctors();
  }

  void clearAllFilters() {
    _selectedAvailability = null;
    _selectedConsultationType = null;
    _selectedGender = null;
    _selectedExperienceLevel = null;
    _selectedDoctorRating = null;
    _minPriceChanges = _minPrice;
    _maxPriceChanges = _maxPrice;
    onLoadPopularDoctors();
  }
}
