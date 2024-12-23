import 'package:for_tamagochi/app/app.locator.dart';
import 'package:for_tamagochi/models/pet/pet_model.dart';
import 'package:for_tamagochi/models/pet/pet_status.dart';
import 'package:for_tamagochi/repositories/pet_repository.dart';
import 'package:for_tamagochi/utils/const/const.dart';

class PetService {
  final _petRepository = locator<PetRepository>();

  PetService();

  Future<Pet?> getCurrentPet() async {
    try {
      final pet = await _petRepository.getPet();
      if (pet != null) {
        return _updatePetStatus(pet);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get current pet');
    }
  }

  Pet _updatePetStatus(Pet pet) {
    // Add status update logic here
    return pet;
  }

  Future<void> createPet(String name) async {
    try {
      final newPet = Pet.initial(name);
      await _petRepository.savePet(newPet);
    } catch (e) {
      throw Exception('Failed to create pet');
    }
  }

  Future<void> feedPet() async {
    try {
      final pet = await getCurrentPet();
      if (pet != null) {
        final updatedPet = pet.copyWith(
          hunger: (pet.hunger + 30).clamp(0, 100),
        );
        await _petRepository.updatePet(updatedPet);
      }
    } catch (e) {
      throw Exception('Failed to feed pet');
    }
  }

  Future<void> playWithPet() async {
    try {
      final pet = await getCurrentPet();
      if (pet != null) {
        final updatedPet = pet.copyWith(
          happiness: (pet.happiness + 30).clamp(0, 100),
          energy: (pet.energy - 20).clamp(0, 100),
        );
        await _petRepository.updatePet(updatedPet);
      }
    } catch (e) {
      throw Exception('Failed to play with pet');
    }
  }

  Future<void> putPetToSleep() async {
    try {
      final pet = await getCurrentPet();
      if (pet != null) {
        final updatedPet = pet.copyWith(
          energy: (pet.energy + 50).clamp(0, 100),
        );
        await _petRepository.updatePet(updatedPet);
      }
    } catch (e) {
      throw Exception('Failed to put pet to sleep');
    }
  }
}