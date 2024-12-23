import 'package:for_tamagochi/models/pet/pet_model.dart';
import 'package:for_tamagochi/models/pet/pet_status.dart';
import 'package:for_tamagochi/repositories/pet_repository.dart';
import 'package:for_tamagochi/utils/const/const.dart';

class PetService {
  final PetRepository _petRepository;

  PetService(this._petRepository);

  Future<Pet?> getCurrentPet() async {
    try {
      final pet = await _petRepository.getPet();
      if (pet != null) {
        return _updatePetStatus(pet);
      }
      return null;
    } catch (e) {
      throw Exception(PetConstants.petNotFoundError);
    }
  }

  Future<void> createPet(String name) async {
    try {
      final pet = Pet.initial(name);
      await _petRepository.savePet(pet);
    } catch (e) {
      throw Exception(PetConstants.savePetError);
    }
  }

  Future<void> feedPet() async {
    try {
      final pet = await _petRepository.getPet();
      if (pet == null) throw Exception(PetConstants.petNotFoundError);
      if (pet.status == PetStatus.dead)
        throw Exception(PetConstants.petDeadError);

      final updatedPet = pet.copyWith(
        hunger: _clampValue(pet.hunger + PetConstants.feedingIncrease),
        lastFed: DateTime.now(),
      );
      await _petRepository.updatePet(updatedPet);
    } catch (e) {
      throw Exception(PetConstants.updatePetError);
    }
  }

  Future<void> playWithPet() async {
    try {
      final pet = await _petRepository.getPet();
      if (pet == null) throw Exception(PetConstants.petNotFoundError);
      if (pet.status == PetStatus.dead)
        throw Exception(PetConstants.petDeadError);

      final updatedPet = pet.copyWith(
        happiness: _clampValue(pet.happiness + PetConstants.playingIncrease),
        energy: _clampValue(pet.energy - PetConstants.energyDecreaseAmount),
        lastPlayed: DateTime.now(),
      );
      await _petRepository.updatePet(updatedPet);
    } catch (e) {
      throw Exception(PetConstants.updatePetError);
    }
  }

  Future<void> putPetToSleep() async {
    try {
      final pet = await _petRepository.getPet();
      if (pet == null) throw Exception(PetConstants.petNotFoundError);
      if (pet.status == PetStatus.dead)
        throw Exception(PetConstants.petDeadError);

      final updatedPet = pet.copyWith(
        energy: _clampValue(pet.energy + PetConstants.sleepingIncrease),
        lastSlept: DateTime.now(),
      );
      await _petRepository.updatePet(updatedPet);
    } catch (e) {
      throw Exception(PetConstants.updatePetError);
    }
  }

  Pet _updatePetStatus(Pet pet) {
    final now = DateTime.now();

    // Calculate stat decreases based on time passed
    final hungerDecrease = _calculateDecrease(
      pet.lastFed,
      now,
      PetConstants.hungerDecreaseInterval,
      PetConstants.hungerDecreaseAmount,
    );

    final happinessDecrease = _calculateDecrease(
      pet.lastPlayed,
      now,
      PetConstants.happinessDecreaseInterval,
      PetConstants.happinessDecreaseAmount,
    );

    final energyDecrease = _calculateDecrease(
      pet.lastSlept,
      now,
      PetConstants.energyDecreaseInterval,
      PetConstants.energyDecreaseAmount,
    );

    final newHunger = _clampValue(pet.hunger - hungerDecrease);
    final newHappiness = _clampValue(pet.happiness - happinessDecrease);
    final newEnergy = _clampValue(pet.energy - energyDecrease);

    // Determine pet status based on stats
    final newStatus =
        _determinePetStatus(newHunger, newHappiness, newEnergy, pet.health);

    return pet.copyWith(
      hunger: newHunger,
      happiness: newHappiness,
      energy: newEnergy,
      status: newStatus,
    );
  }

  int _calculateDecrease(
      DateTime lastUpdate, DateTime now, int interval, int amount) {
    final hoursPassed = now.difference(lastUpdate).inHours;
    return (hoursPassed ~/ interval) * amount;
  }

  int _clampValue(int value) {
    return value.clamp(0, 100);
  }

  PetStatus _determinePetStatus(
      int hunger, int happiness, int energy, int health) {
    if (health <= 0) return PetStatus.dead;
    if (hunger <= PetConstants.criticalThreshold ||
        happiness <= PetConstants.criticalThreshold ||
        energy <= PetConstants.criticalThreshold) {
      return PetStatus.sick;
    }
    if (hunger <= PetConstants.warningThreshold) return PetStatus.hungry;
    if (energy <= PetConstants.warningThreshold) return PetStatus.tired;
    return PetStatus.happy;
  }
}
