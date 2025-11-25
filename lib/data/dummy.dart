import '../core/constant/app_image.dart';
import 'model/filter_model.dart';
import 'model/onboarding_model.dart';
import 'model/speciality_model.dart';

List<OnboardingModel> onboardingItems = [
  OnboardingModel(
    title: "Your Health, Our Priority",
    description:
        "We look after the well-being of your entire family. Find the right doctor and book an appointment with complete peace of mind",
    image: AppImage.imagesOnboard1,
  ),
  OnboardingModel(
    title: "Take Care of Your Loved Ones",
    description:
        "From pediatrics to general medicine and beyond, manage your whole family's health simply, quickly, and securely.",
    image: AppImage.imagesOnboard2,
  ),
  OnboardingModel(
    title: "Your Family Health Partner",
    description:
        "Because your family's health is precious, we put the best healthcare professionals within your reach.",
    image: AppImage.imagesOnboard3,
  ),
];

List<SpecialityModel> specialityItems = [
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

List<FilterModel> availabilityFilters = [
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
  FilterModel(name: "Night", value: "night", image: AppImage.imagesIconesNight),
];

List<FilterModel> consultationTypeFilters = [
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

List<FilterModel> genderFilters = [
  FilterModel(name: "Male", value: "male", image: AppImage.imagesIconesMale),
  FilterModel(
    name: "Female",
    value: "female",
    image: AppImage.imagesIconesFemale,
  ),
];

List<FilterModel> ratingFilters = [
  FilterModel(name: "1", value: "1", image: AppImage.imagesIconesStar),
  FilterModel(name: "2", value: "2", image: AppImage.imagesIconesStar),
  FilterModel(name: "3", value: "3", image: AppImage.imagesIconesStar),
  FilterModel(name: "4", value: "4", image: AppImage.imagesIconesStar),
  FilterModel(name: "5", value: "5", image: AppImage.imagesIconesStar),
];

List<FilterModel> experienceFilters = [
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
