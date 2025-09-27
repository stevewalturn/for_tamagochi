# For Tamagochi 🐾

A modern Tamagotchi-style virtual pet application built with Flutter, featuring comprehensive pet management, interactive gameplay, and real-time pet status tracking. Experience the nostalgia of raising a digital companion with modern mobile features and engaging interactions.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?style=flat-square&logo=flutter)](https://flutter.dev/)
[![Stacked](https://img.shields.io/badge/Stacked-3.4.0-purple?style=flat-square)](https://pub.dev/packages/stacked)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## ✨ Features

- **Virtual Pet Creation** - Create and customize your digital companion
- **Comprehensive Pet Management** - Feed, play, and care for your pet
- **Real-time Status Tracking** - Monitor health, hunger, happiness, and energy levels
- **Interactive Gameplay** - Multiple interaction options affect pet well-being
- **Pet Shop System** - Purchase items to improve pet stats
- **Dynamic Pet States** - Pets respond to care (or lack thereof)
- **Status Visualizations** - Color-coded progress bars and emoji indicators

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK 2.17 or higher
- Android Studio / VS Code
- iOS Simulator / Android Emulator

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/for_tamagochi.git
cd for_tamagochi
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 🏗️ Architecture

The application follows the Stacked architecture pattern for clean separation of concerns:

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

### Key Components

- **Views**: UI layer components
- **ViewModels**: Business logic and state management
- **Services**: Core application services
- **Models**: Data structures and entities
- **Repositories**: Data persistence layer

### Core Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| stacked | ^3.4.0 | Architecture and state management |
| stacked_services | ^1.1.0 | Navigation and dialog services |
| gap | ^2.0.0 | UI spacing utilities |

## 🛠️ Development

### Running Tests

```bash
flutter test
```

### Code Formatting

```bash
flutter format .
```

### Build Releases

For Android:
```bash
flutter build apk --release
```

For iOS:
```bash
flutter build ios --release
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by the classic Tamagotchi virtual pets
- Built with Flutter and the Stacked architecture
- Special thanks to all contributors

---

Made with ❤️ by [Your Name/Organization]