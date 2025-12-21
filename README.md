# Medigo

A Flutter-based medical appointment application that connects patients with healthcare providers.

---

## 🎓 Video Tutorial

<div align="center">

### 📺 Complete Flutter & MySQL Integration Course

[![YouTube Playlist](https://img.shields.io/badge/YouTube-Playlist-red?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/playlist?list=PLGwhLIITEIB_u-pBiiUxAf3Kz3Nu9VAY8)

**Learn how to build this app from scratch!**  
_Follow along with step-by-step video tutorials covering Flutter development and MySQL database integration._

</div>

---

## 📱 About

Medigo is a modern healthcare mobile application built with Flutter, designed to streamline the process of finding and booking appointments with medical professionals. The app features an intuitive interface for browsing doctors by specialty, viewing profiles, and managing healthcare appointments.

## ✨ Features

- **Onboarding Experience**: Smooth introduction to the app for new users
- **User Authentication**: Secure login and registration system
- **Doctor Discovery**: Browse and search for doctors by specialty
- **Specialty Categories**: Organized medical specialties for easy navigation
- **Doctor Profiles**: Detailed information about healthcare providers
- **Filtering & Search**: Advanced filtering options to find the right doctor
- **Responsive UI**: Beautiful, modern interface with custom components

## 🛠️ Tech Stack

- **Framework**: Flutter 3.9.2+
- **State Management**: GetX 4.7.3
- **Local Storage**: Shared Preferences 2.5.3
- **UI Components**:
  - Flutter SVG 2.2.3 (for vector graphics)
  - Flutter SpinKit 5.2.2 (loading animations)
  - Another XLider 3.0.2 (custom sliders)

## 📂 Project Structure

```
lib/
├── main.dart                    # Application entry point
├── controllers/                 # GetX controllers for state management
│   ├── home_controller.dart
│   ├── login_controller.dart
│   ├── register_controller.dart
│   ├── speciality_controller.dart
│   └── ...
├── core/                        # Core utilities and configurations
│   ├── config.dart              # App-wide configuration constants
│   ├── constant/                # Constants (colors, fonts, images, routes)
│   ├── functions/               # Utility functions (validation, helpers)
│   ├── services/                # Service layer (storage, etc.)
│   │   └── storage_service.dart
│   └── theme/                   # Theme configuration
│       └── app_theme.dart
├── data/                        # Data layer
│   ├── model/                   # Data models
│   ├── repositories/            # Repository pattern for data access
│   │   ├── filter_repository.dart
│   │   ├── navigation_repository.dart
│   │   ├── onboarding_repository.dart
│   │   └── speciality_repository.dart
│   └── dummy.dart               # Temporary data aggregator
├── middleware/                  # Route middleware
│   ├── auth_middleware.dart
│   └── onboarding_middleware.dart
├── router/                      # App routing configuration
│   └── index.dart
├── shared/                      # Reusable widgets
│   ├── buttons/
│   ├── custom_expansion_tile.dart
│   ├── custom_range_slider.dart
│   ├── popular_doctor_card.dart
│   └── ...
└── views/                       # UI screens
    ├── splash_screen.dart
    ├── authentification/        # Login & registration screens
    ├── home/                    # Home screen
    ├── initial/                 # Initial/welcome screen
    ├── onboarding/              # Onboarding flow
    └── speciality/              # Doctor specialty browsing
```

## 🏗️ Architecture

The app follows a clean architecture pattern with clear separation of concerns:

- **Presentation Layer**: Views and widgets
- **Business Logic Layer**: GetX controllers
- **Data Layer**: Repositories and models
- **Service Layer**: Infrastructure services (storage, etc.)
- **Core Layer**: Configuration, constants, utilities, and theme

### Key Architectural Features

- **Repository Pattern**: Centralized data access through repositories
- **Service Layer**: Infrastructure services managed via GetX dependency injection
- **Const Optimization**: Extensive use of const constructors for performance
- **Type Safety**: Strong typing throughout the codebase
- **Scalable Structure**: Easy to extend with new features

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.9.2 or higher)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- A device or emulator for testing

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/LaithMahdi/medigo.git
   cd medigo
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**

   ```bash
   # For development
   flutter run

   # For specific platform
   flutter run -d android
   flutter run -d ios
   ```

### Database Setup

#### SQL Schema

**Insert Specialities:**

```sql
INSERT INTO speciality (name, icon, is_active) VALUES
('Dentist', '', true),
('Ophthalmologist', '', true),
('ENT Specialist', '', true),
('Otologist', '', true),
('Gynecologist', '', true),
('Cardiologist', '', true),
('Gastroenterologist', '', true),
('Neurologist', '', true);
```

**Insert Doctors:**

```sql
INSERT INTO doctor (full_name, description, image, price, experience_number, rating_number, patient_number, speciality) VALUES
('Dr. Sarah Johnson', 'Experienced dentist with 10+ years in cosmetic and general dentistry', '', 120.50, 10, 4, 2500, 1),
('Dr. Michael Chen', 'Specialized in cataract surgery and laser eye treatments', '', 180.75, 15, 5, 3200, 2),
('Dr. James Wilson', 'Expert in ear, nose and throat disorders with focus on pediatric ENT', '', 155.00, 12, 4, 1800, 3),
('Dr. Emma Rodriguez', 'Otology specialist with expertise in hearing disorders and implants', '', 165.25, 8, 4, 1200, 4),
('Dr. Lisa Thompson', 'Gynecology and obstetrics specialist with focus on women''s health', '', 135.00, 14, 5, 2800, 5),
('Dr. Robert Davis', 'Cardiologist specializing in interventional cardiology and heart failure', '', 220.00, 20, 5, 4500, 6),
('Dr. Amanda Lee', 'Gastroenterologist expert in endoscopic procedures and digestive health', '', 175.50, 11, 4, 1900, 7),
('Dr. Thomas Brown', 'Neurologist with specialization in movement disorders and epilepsy', '', 195.75, 16, 5, 3100, 8);
```

### Build for Production

```bash
# Android
flutter build apk --release
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 🎨 Design System

The app uses a custom design system with:

- **Font Family**: Inter (Regular, Medium, SemiBold, Bold)
- **Color Scheme**: Custom color palette defined in `AppColor`
- **Spacing**: Consistent spacing system via `Config` class
- **Components**: Reusable custom widgets for consistency

## 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ Linux
- ✅ macOS

## 🧪 Testing

Run the test suite:

```bash
flutter test
```

## 📄 License

This project is private and not published to any package repository.

## 👥 Contributing

This is a private project. For contributions, please contact the repository owner.

## 📞 Support

For support or questions, please contact the development team.

## 🔄 Version

Current Version: **1.0.0+1**

---

Built with ❤️ using Flutter
