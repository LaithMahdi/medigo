# Medigo

A Flutter-based medical appointment application that connects patients with healthcare providers.

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
│   ├── config.dart              # App-wide configuration
│   ├── constant/                # Constants (colors, fonts, images)
│   └── functions/               # Utility functions
├── data/                        # Data models and dummy data
│   ├── model/
│   └── dummy.dart
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
