import 'package:for_tamagochi/models/pet/pet_model.dart';

class PetRepository {
  // In-memory storage for demo purposes
  Pet? _currentPet;

  Future<Pet?> getPet() async {
    try {
      return _currentPet;
    } catch (e) {
      throw Exception('Failed to get pet data: ${e.toString()}');
    }
  }

  Future<void> savePet(Pet pet) async {
    try {
      _currentPet = pet;
    } catch (e) {
      throw Exception('Failed to save pet data: ${e.toString()}');
    }
  }

  Future<void> updatePet(Pet pet) async {
    try {
      _currentPet = pet;
    } catch (e) {
      throw Exception('Failed to update pet data: ${e.toString()}');
    }
  }

  Future<void> deletePet() async {
    try {
      _currentPet = null;
    } catch (e) {
      throw Exception('Failed to delete pet data: ${e.toString()}');
    }
  }
}
