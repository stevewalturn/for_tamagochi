# 🐾 Virtual Pet Companion - Modern Tamagotchi

A modern take on the classic Tamagotchi virtual pet game, built with Flutter using the Stacked architecture pattern. Create, nurture, and interact with your digital companion while managing their health, happiness, and energy levels.

![Tamagotchi Banner](assets/banner.png)

## ✨ Features

- **Pet Creation & Management**: Create and customize your virtual pet with unique names and attributes
- **Real-time Status Tracking**: Monitor your pet's health, hunger, happiness, and energy levels
- **Interactive Care Actions**: 
  - Feed your pet to maintain hunger levels
  - Play to increase happiness
  - Rest to restore energy
- **Dynamic Pet Shop**: Purchase items and treats for your pet
- **Status Updates**: Detailed pet status dialogs with emoji indicators
- **Responsive Animations**: Engaging pet animations that reflect current status

## 🏗️ Architecture & Technical Highlights

Built using the Stacked MVVM architecture for clean separation of concerns:

```markdown
lib/
├── app/                 # App configuration and setup
├── features/           # Core feature modules
│   ├── home/          # Home screen implementation
│   ├── pet/           # Pet management features
│   └── startup/       # App initialization
├── models/            # Data models
├── services/          # Business logic services
├── ui/                # UI components
│   ├── bottom_sheets/
│   ├── dialogs/
│   └── views/
└── utils/            # Utilities and constants
```

### Key Technical Features
- Reactive state management with Stacked
- Dependency injection for services
- Modular architecture with clear separation
- Centralized dialog and bottom sheet management

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0 or higher)
- Dart SDK (2.17 or higher)
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/for_tamagochi.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## 📦 Dependencies

| Package | Purpose |
|---------|----------|
| stacked | MVVM Architecture & State Management |
| stacked_services | Navigation, Dialog, Bottom Sheet Services |
| gap | Layout Spacing Utility |
| firebase_core | Firebase Integration |

## 🛠️ Development

### Running Tests
```bash
flutter test
```

### Code Formatting
```bash
flutter format .
```

### Build Commands
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

- Inspired by the classic Tamagotchi virtual pets
- Built with Flutter and the Stacked architecture framework
- Special thanks to all contributors

---

Made with ❤️ using Flutter