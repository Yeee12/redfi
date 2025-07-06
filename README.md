# ✈️ RideFi — Flight Search & Booking App

A Flutter application for searching flights, applying filters, and booking tickets — with a clean, modern UI.

---

## 📋 Overview

RideFi helps users search and book flights, apply filters (like direct flights, travel class), and keep track of their favorite flights.  
Built with **Flutter**, leveraging its declarative UI, and standard state management.

---

## 📸 Screenshots

![home page](https://github.com/user-attachments/assets/b69bc3a5-9a38-4937-8b1f-81c17f7b55f9)
![search page](https://github.com/user-attachments/assets/0842b079-9752-488a-a7e9-5db681705704)
![result page](https://github.com/user-attachments/assets/b40800cc-e0b7-4f86-9061-28ab2dfe2ee9)



---

## 🚀 Features

- **Flight Search**: Search flights by origin, destination, date, and passengers  
- **Flight Filters**: Filter by direct flights, travel class, etc.  
- **Favorites**: Save and view favorite flights  
- **Onboarding**: Intro screens for first-time users  
- **Responsive UI**: Works well on various screen sizes  
- **Local Storage**: Uses SharedPreferences for saving favorites  

---

## 🏗 Architecture

Built using clean, modular architecture with standard **Flutter best practices**.

### Highlights:
- **State Management**: Basic stateful widgets & ChangeNotifier with riverpod 
- **Routing**: Centralized app router
- **Persistence**: SharedPreferences for lightweight storage
- **Separation of Concerns**: Clear split between domain, data, and presentation layers

---

## 📁 Project Structure
lib/
├── features/
│ ├── flight_search/ # Search UI, filters, domain logic
│ ├── flight_result/ # Flight result display
│ └── widget/ # Reusable widgets
├── starter/ # Onboarding logic & screens
├── utils/ # Utilities, custom widgets, helpers
├── router/ # App routing
└── main.dart

## ⚙️ Setup Instructions

### Requirements
- Flutter SDK >=3.0
- Dart >=2.17
- Android Studio / VS Code

### Installation

```bash
# Clone the repository
git clone <repository-url>
cd ridefi

# Install dependencies
flutter pub get

Run on a device
flutter run
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release
