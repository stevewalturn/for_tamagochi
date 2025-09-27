# 🐾 For Tamagochi - Virtual Pet Companion

A modern Flutter-based virtual pet simulation application that brings the classic Tamagotchi experience to mobile devices. Built with the Stacked architecture pattern, this app offers an engaging and interactive virtual pet care experience.

## ✨ Features

- **Pet Creation & Management**: Create and personalize your virtual pet with custom names
- **Interactive Care System**: Feed, play with, and put your pet to sleep
- **Real-time Status Monitoring**: Track your pet's health, hunger, happiness, and energy levels
- **Dynamic Pet States**: Pets display different emotions and states based on their well-being
- **Pet Shop System**: Purchase items to improve your pet's condition (coming soon)
- **Reactive UI Updates**: Real-time visual feedback for all pet interactions

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK 2.17 or higher
- A suitable IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/for_tamagochi.git
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

The application follows the Stacked architecture pattern with clear separation of concerns:

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

- **Views**: UI components with corresponding ViewModels
- **Services**: Business logic and data management
- **Models**: Data structures and state management
- **Repositories**: Data persistence layer

## 📦 Dependencies

| Package | Purpose |
|---------|---------|
| stacked | Architecture and state management |
| stacked_services | Navigation, dialogs, and bottom sheets |
| gap | UI spacing utilities |
| equatable | Value equality |

## 🔧 Development

### Running Tests
```bash
flutter test
```

### Code Formatting
```bash
flutter format .
```

### Building for Release

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
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🎯 State Management Flow

The application implements a reactive state management pattern using Stacked:
- ViewModels extend BaseViewModel for reactive state updates
- Services handle core business logic
- State changes propagate through ViewModels to views
- Real-time updates managed through ReactiveServices

## 🔄 Navigation Flow

Navigation is handled through Stacked's router configuration:
- Startup flow begins with StartupView
- Main interface centered around PetView
- Modal interfaces (dialogs, bottom sheets) managed through dedicated services
- Type-safe routing with parameter support

---

Made with ❤️ by [Your Name/Team]