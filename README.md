# Virtual Pet Companion 🐾

A sophisticated Tamagotchi-style mobile application built with Flutter that lets users create, nurture, and interact with virtual pets. Experience the joy of pet companionship with modern, reactive UI and engaging gameplay mechanics.

[![Flutter Version](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev/)
[![Stacked Architecture](https://img.shields.io/badge/Architecture-Stacked-purple)](https://pub.dev/packages/stacked)

## ✨ Features

- **Pet Creation & Customization**: Create and name your unique virtual companion
- **Interactive Pet Care**: Feed, play, and put your pet to sleep
- **Dynamic Status System**: Monitor your pet's health, hunger, happiness, and energy levels
- **Pet Shop Integration**: Purchase items to improve your pet's wellbeing
- **Reactive State Management**: Real-time pet status updates and animations
- **Clean Architecture**: Implements MVVM pattern using Stacked framework

## 🚀 Technical Highlights

- Stacked MVVM Architecture for clean separation of concerns
- Reactive state management with ViewModels
- Service-based dependency injection
- Modular dialog and bottom sheet system
- Comprehensive pet lifecycle management
- Animated UI components with status-based feedback

## 🛠️ Getting Started

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK 2.17 or higher
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/virtual_pet_companion.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

## 📐 Project Structure

```markdown
lib/
├── app/
│   ├── app.dart
│   ├── app.locator.dart
│   ├── app.router.dart
│   └── app.dialogs.dart
├── features/
│   ├── home/
│   ├── pet/
│   └── startup/
├── models/
│   └── pet/
├── services/
│   ├── pet_service.dart
│   └── analytic_service.dart
├── ui/
│   ├── views/
│   ├── dialogs/
│   └── bottom_sheets/
└── utils/
    └── const/
```

## 🏗️ Architecture Overview

The application implements a Stacked MVVM architecture with three main layers:

1. **Views**: Handle UI presentation
2. **ViewModels**: Manage state and business logic
3. **Services**: Provide core functionality

### Key Components

- `PetService`: Manages pet lifecycle and interactions
- `PetRepository`: Handles data persistence
- `NavigationService`: Manages app navigation
- `DialogService`: Handles modal dialogs
- `BottomSheetService`: Manages bottom sheets

## 📦 Major Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| stacked | ^3.4.0 | MVVM Architecture |
| stacked_services | ^1.1.0 | Navigation & Dialog Services |
| gap | ^2.0.0 | UI Spacing Utilities |

## 🧪 Development

### Running Tests
```bash
flutter test
```

### Code Formatting
```bash
flutter format .
```

### Building for Production

Android:
```bash
flutter build apk --release
```

iOS:
```bash
flutter build ios --release
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Stacked Architecture by FilledStacks
- Flutter Team for the amazing framework
- All contributors who help improve this project

---

Made with ❤️ using Flutter and Stacked Architecture