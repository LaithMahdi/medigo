import 'package:medigo/data/model/filter_model.dart';
import 'package:medigo/core/constant/app_image.dart';

/// Repository for filter-related data
/// Provides access to various filter options for the app
class FilterRepository {
  FilterRepository._();

  /// Get availability filter options
  static List<FilterModel> getAvailabilityFilters() {
    return [
      FilterModel(
        name: "Morning",
        value: "morning",
        image: AppImage.imagesIconesMorning,
      ),
      FilterModel(
        name: "Afternoon",
        value: "afternoon",
        image: AppImage.imagesIconesAfternoon,
      ),
      FilterModel(
        name: "Night",
        value: "night",
        image: AppImage.imagesIconesNight,
      ),
    ];
  }

  /// Get consultation type filter options
  static List<FilterModel> getConsultationTypeFilters() {
    return [
      FilterModel(
        name: "Online",
        value: "online",
        image: AppImage.imagesIconesOnline,
      ),
      FilterModel(
        name: "Home visit",
        value: "home_visit",
        image: AppImage.imagesIconesHomeVisit,
      ),
      FilterModel(
        name: "Hospital",
        value: "hospital",
        image: AppImage.imagesIconesHospital,
      ),
    ];
  }

  /// Get gender filter options
  static List<FilterModel> getGenderFilters() {
    return [
      FilterModel(
        name: "Male",
        value: "male",
        image: AppImage.imagesIconesMale,
      ),
      FilterModel(
        name: "Female",
        value: "female",
        image: AppImage.imagesIconesFemale,
      ),
    ];
  }

  /// Get rating filter options
  static List<FilterModel> getRatingFilters() {
    return [
      FilterModel(name: "1", value: "1", image: AppImage.imagesIconesStar),
      FilterModel(name: "2", value: "2", image: AppImage.imagesIconesStar),
      FilterModel(name: "3", value: "3", image: AppImage.imagesIconesStar),
      FilterModel(name: "4", value: "4", image: AppImage.imagesIconesStar),
      FilterModel(name: "5", value: "5", image: AppImage.imagesIconesStar),
    ];
  }

  /// Get experience filter options
  static List<FilterModel> getExperienceFilters() {
    return [
      FilterModel(
        name: "0–5 years",
        value: "1-3",
        image: AppImage.imagesIconesExperience,
      ),
      FilterModel(
        name: "5–10 years",
        value: "4-6",
        image: AppImage.imagesIconesExperience,
      ),
      FilterModel(
        name: "10+ years",
        value: "7+",
        image: AppImage.imagesIconesExperience,
      ),
    ];
  }

  /// Get sort by filter options
  static List<FilterModel> getSortByFilters() {
    return [
      FilterModel(name: "Full Name (A-Z)", value: "name_asc"),
      FilterModel(name: "Experience (High → Low)", value: "experience_desc"),
      FilterModel(name: "Rating (High → Low)", value: "rating_desc"),
      FilterModel(name: "Fee (Low → High)", value: "fee_asc"),
      FilterModel(name: "Availability", value: "availability"),
    ];
  }
}
