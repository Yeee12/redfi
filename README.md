# ✈️ RideFi — Flight Search & Booking App

A Flutter application for searching flights, applying filters, and booking tickets — with a clean, modern UI.

---

## 📋 Overview

RideFi helps users search and book flights, apply filters (like direct flights, travel class), and keep track of their favorite flights.  
Built with **Flutter**, leveraging its declarative UI, and standard state management.

---

## 📸 Screenshots



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
- **State Management**: Basic stateful widgets & ChangeNotifier
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
