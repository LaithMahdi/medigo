import 'package:medigo/core/constant/app_image.dart';
import 'package:medigo/data/model/speciality_model.dart';

/// Repository for specialty-related data
/// Provides access to medical specialties
class SpecialityRepository {
  SpecialityRepository._();

  /// Get all available specialties
  static List<SpecialityModel> getAllSpecialities() {
    return [
      SpecialityModel(
        id: "0",
        title: "Dentist",
        image: AppImage.imagesSpecialityDentist,
      ),
      SpecialityModel(
        id: "1",
        title: "Ophthalmologist",
        image: AppImage.imagesSpecialityOphthalmologist,
      ),
      SpecialityModel(
        id: "2",
        title: "ENT Specialist",
        image: AppImage.imagesSpecialityEntSpecialist,
      ),
      SpecialityModel(
        id: "3",
        title: "Otologist",
        image: AppImage.imagesSpecialityOtologist,
      ),
      SpecialityModel(
        id: "4",
        title: "Gynecologist",
        image: AppImage.imagesSpecialityGynecologist,
      ),
      SpecialityModel(
        id: "5",
        title: "Cardiologist",
        image: AppImage.imagesSpecialityCardiologist,
      ),
      SpecialityModel(
        id: "6",
        title: "Gastroenterologist",
        image: AppImage.imagesSpecialityGastroenterologist,
      ),
      SpecialityModel(
        id: "7",
        title: "Neurologist",
        image: AppImage.imagesSpecialityNeurologist,
      ),
    ];
  }

  /// Get specialty by ID
  static SpecialityModel? getSpecialityById(String id) {
    try {
      return getAllSpecialities().firstWhere((specialty) => specialty.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Get specialty by title
  static SpecialityModel? getSpecialityByTitle(String title) {
    try {
      return getAllSpecialities().firstWhere(
        (specialty) => specialty.title == title,
      );
    } catch (e) {
      return null;
    }
  }
}
