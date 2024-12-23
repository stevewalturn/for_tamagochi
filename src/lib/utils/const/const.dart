class PetConstants {
  // Time intervals
  static const int hungerDecreaseInterval = 2; // hours
  static const int happinessDecreaseInterval = 3; // hours
  static const int energyDecreaseInterval = 4; // hours
  static const int healthDecreaseInterval = 6; // hours

  // Stat decrease amounts
  static const int hungerDecreaseAmount = 10;
  static const int happinessDecreaseAmount = 15;
  static const int energyDecreaseAmount = 20;
  static const int healthDecreaseAmount = 25;

  // Stat increase amounts from actions
  static const int feedingIncrease = 30;
  static const int playingIncrease = 25;
  static const int sleepingIncrease = 40;
  static const int healingIncrease = 50;

  // Thresholds
  static const int criticalThreshold = 20;
  static const int warningThreshold = 40;
  static const int goodThreshold = 70;

  // Error Messages
  static const String petNotFoundError =
      'Unable to find your pet. Please try again.';
  static const String savePetError =
      'Failed to save pet data. Please try again.';
  static const String updatePetError =
      'Failed to update pet status. Please try again.';
  static const String petDeadError =
      'Your pet has passed away. Create a new pet to continue.';
  static const String genericError = 'Something went wrong. Please try again.';
}
