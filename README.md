# For Tamagochi 🐾

A modern Tamagotchi-style virtual pet companion built with Flutter, offering an interactive and engaging pet care experience. This application implements comprehensive pet management features using the Stacked architecture pattern for robust state management and clean code organization.

[![Flutter Version](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev/)
[![Stacked](https://img.shields.io/badge/Architecture-Stacked-purple)](https://stacked.filledstacks.com/)

## Features ✨

- **Virtual Pet Creation** 🐣
  - Custom pet naming
  - Initial pet status configuration
  - Dynamic pet lifecycle management

- **Interactive Pet Care** 🎮
  - Feed your pet to maintain hunger levels
  - Play activities to boost happiness
  - Sleep cycle management for energy restoration
  - Real-time status monitoring

- **Pet Status System** 📊
  - Health tracking
  - Happiness metrics
  - Energy management
  - Hunger monitoring
  - Dynamic status updates with emoji indicators

- **Pet Shop System** 🏪
  - Purchase items for pet care
  - Stat restoration items
  - Future expandability for new items

## Architecture & Technical Highlights 🏗️

```markdown
lib/
├── app/                 # App configuration and setup
├── features/           # Feature-based modules
│   ├── home/          # Home screen features
│   ├── pet/           # Pet management features
│   └── startup/       # App initialization
├── models/            # Data models
├── services/          # Business logic services
├── ui/                # Shared UI components
└── utils/            # Utility functions and constants
```

### Technical Stack

- **Architecture Pattern**: Stacked (MVVM)
- **State Management**: Reactive ViewModels
- **Navigation**: Stacked Router
- **Dependency Injection**: Get It service locator
- **UI Components**: Custom dialogs and bottom sheets

## Getting Started 🚀

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK 2.17 or higher
- Android Studio / VS Code with Flutter extensions

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

## Development 🛠️

### Build Commands

```bash
# Development build
flutter build apk --debug

# Production build
flutter build apk --release
```

### Code Style

Follow Flutter's official style guide and run:
```bash
flutter format .
flutter analyze
```

### Testing

Run unit tests:
```bash
flutter test
```

## Key Dependencies 📦

| Package | Version | Purpose |
|---------|---------|---------|
| stacked | ^3.4.0 | Architecture framework |
| stacked_services | ^1.1.0 | Service management |
| gap | ^2.0.0 | UI spacing utilities |

## Contributing 🤝

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License 📄

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments 🙏

- Stacked architecture by FilledStacks
- Flutter community for inspiration and support

---

Made with ❤️ using Flutter

Note: Replace placeholder URLs, usernames, and adjust version numbers as needed for your specific implementation.