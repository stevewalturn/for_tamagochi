import 'package:stacked/stacked.dart';
import 'package:for_tamagochi/models/pet/pet_model.dart';
import 'package:for_tamagochi/models/pet/pet_status.dart';

class PetStatusDialogModel extends BaseViewModel {
  final Pet pet;

  PetStatusDialogModel({required this.pet});

  String get statusMessage {
    switch (pet.status) {
      case PetStatus.happy:
        return '${pet.name} is feeling great! Keep up the good work!';
      case PetStatus.hungry:
        return '${pet.name} is hungry! Time for a meal!';
      case PetStatus.sick:
        return '${pet.name} isn\'t feeling well. They need care and attention!';
      case PetStatus.tired:
        return '${pet.name} is exhausted. Some rest would be good!';
      case PetStatus.dead:
        return 'Unfortunately, ${pet.name} has passed away. Take better care of your next pet!';
    }
  }

  String get statusDetails {
    final List<String> details = [];

    if (pet.hunger < 50) {
      details.add('• Hungry (${pet.hunger}% food level)');
    }
    if (pet.happiness < 50) {
      details.add('• Unhappy (${pet.happiness}% happiness level)');
    }
    if (pet.energy < 50) {
      details.add('• Low energy (${pet.energy}% energy level)');
    }
    if (pet.health < 50) {
      details.add('• Poor health (${pet.health}% health level)');
    }

    return details.isEmpty
        ? 'All stats are looking good!'
        : 'Current issues:\n${details.join('\n')}';
  }
}
