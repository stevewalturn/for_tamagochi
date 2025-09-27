# 🐾 Virtual Pet Companion

A sophisticated Tamagotchi-style mobile application that brings virtual pet interactions to life. Built with Flutter and utilizing the Stacked architecture pattern for robust state management and clean code organization.

## ✨ Key Features

- **Virtual Pet Creation & Management**
  - Create and customize your virtual companion
  - Real-time pet status monitoring
  - Dynamic pet animations and visual feedback

- **Interactive Pet Care**
  - Feed, play, and rest mechanics
  - Health and happiness tracking
  - Energy management system

- **Rich User Interface**
  - Status-aware pet animations
  - Interactive action buttons
  - Detailed pet statistics display
  - In-game shop system

## 🏗️ Architecture & Technical Highlights

Built using the **Stacked Architecture** pattern with three primary layers:

```markdown
lib/
├── app/
│   ├── app.dart
│   ├── app.locator.dart
│   └── app.router.dart
├── features/
│   ├── home/
│   ├── pet/
│   └── startup/
├── models/
│   └── pet/
├── services/
├── ui/
│   ├── bottom_sheets/
│   ├── dialogs/
│   └── views/
└── utils/
```

### Core Technical Features

- Reactive state management using Stacked
- Service-based dependency injection
- Dialog and bottom sheet management
- Analytics integration
- Comprehensive pet lifecycle management

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK 2.17 or higher
- Android Studio / VS Code with Flutter plugins

### Installation

1. Clone the repository:
```bash
git clone [repository-url]
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 📦 Dependencies

| Package | Purpose |
|---------|----------|
| stacked | MVVM Architecture & State Management |
| stacked_services | Navigation, Dialog, and Bottom Sheet Services |
| gap | UI Spacing Utilities |
| equatable | Value Equality |

## 🛠️ Development

### Running Tests
```bash
flutter test
```

### Code Formatting
```bash
flutter format .
```

### Building for Production

#### Android
```bash
flutter build apk --release
```

#### iOS
```bash
flutter build ios --release
```

## 🔄 State Management

The application implements a reactive state management approach using Stacked:

1. ViewModels handle business logic and state
2. Services manage core functionality
3. Views react to state changes automatically
4. Repository pattern for data management

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📱 Screenshots

[Screenshots to be added]

---

Built with ❤️ using Flutter and Stacked Architecture