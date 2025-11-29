import 'package:medigo/data/repositories/filter_repository.dart';
import 'package:medigo/data/repositories/navigation_repository.dart';
import 'package:medigo/data/repositories/onboarding_repository.dart';
import 'package:medigo/data/repositories/speciality_repository.dart';
import 'model/bottom_navigation_model.dart';
import 'model/filter_model.dart';
import 'model/onboarding_model.dart';
import 'model/speciality_model.dart';

// ==================== Onboarding ====================
List<OnboardingModel> onboardingItems =
    OnboardingRepository.getOnboardingItems();

// ==================== Specialities ====================
List<SpecialityModel> specialityItems =
    SpecialityRepository.getAllSpecialities();

// ==================== Filters ====================
List<FilterModel> availabilityFilters =
    FilterRepository.getAvailabilityFilters();
List<FilterModel> consultationTypeFilters =
    FilterRepository.getConsultationTypeFilters();
List<FilterModel> genderFilters = FilterRepository.getGenderFilters();
List<FilterModel> ratingFilters = FilterRepository.getRatingFilters();
List<FilterModel> experienceFilters = FilterRepository.getExperienceFilters();
List<FilterModel> sortByFilters = FilterRepository.getSortByFilters();

// ==================== Navigation ====================
List<BottomNavigationModel> bottomNavigationItems =
    NavigationRepository.getBottomNavigationItems();
