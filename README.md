# For Tamagochi 🐾

A sophisticated virtual pet companion application built with Flutter that brings the nostalgic Tamagotchi experience to modern mobile devices. Featuring real-time pet status monitoring, interactive care mechanics, and an engaging pet lifecycle management system.

[![Flutter Version](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev/)
[![Stacked Architecture](https://img.shields.io/badge/Architecture-Stacked-purple)](https://pub.dev/packages/stacked)

## Features ✨

- 🐣 **Dynamic Pet Creation**: Create and name your virtual companion
- 🎮 **Interactive Pet Care**: Feed, play, and manage your pet's sleep cycle
- 📊 **Real-time Status Monitoring**: Track health, hunger, happiness, and energy levels
- 🏪 **Pet Shop Interface**: Purchase items and accessories for your pet
- 🎯 **Status-based Animations**: Visual feedback based on pet's emotional state
- 💾 **Persistent Pet Data**: Save and maintain pet progress across sessions

## Getting Started 🚀

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK 2.17 or higher
- A code editor (VS Code, Android Studio, etc.)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/for_tamagochi.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

## Architecture 🏗️

Built using the Stacked MVVM architecture pattern for clean separation of concerns and maintainable code structure.

### Project Structure
```markdown
lib/
├── app/
│   ├── app.dart
│   ├── app.locator.dart
│   ├── app.router.dart
│   └── app.dialogs.dart
├── features/
│   ├── home/
│   ├── startup/
│   └── pet/
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

### Key Components

- **Views**: UI components using Stacked architecture
- **ViewModels**: Business logic and state management
- **Services**: Core functionality and data operations
- **Models**: Data structures and entity definitions
- **Repositories**: Data persistence and retrieval

## Core Dependencies 📦

| Package | Version | Purpose |
|---------|---------|---------|
| stacked | ^3.4.0 | MVVM Architecture |
| stacked_services | ^1.1.0 | Navigation & Dialog Services |
| gap | ^2.0.0 | Layout Utilities |
| equatable | ^2.0.0 | Value Comparison |

## Development 🛠️

### Running Tests
```bash
flutter test
```

### Code Formatting
```bash
flutter format .
```

### Build Release
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## Contributing 🤝

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

- Inspired by the classic Tamagotchi virtual pets
- Built with Flutter and the Stacked architecture framework
- Special thanks to all contributors

---
Made with ❤️ using Flutter