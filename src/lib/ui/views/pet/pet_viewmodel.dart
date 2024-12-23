import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:for_tamagochi/app/app.locator.dart';
import 'package:for_tamagochi/models/pet/pet_model.dart';
import 'package:for_tamagochi/services/pet_service.dart';
import 'package:for_tamagochi/services/analytic_service.dart';

class PetViewModel extends BaseViewModel {
  final _petService = locator<PetService>();
  final _dialogService = locator<DialogService>();
  final _analyticService = locator<AnalyticService>();

  Pet? _pet;
  Pet? get pet => _pet;

  bool get hasPet => _pet != null;

  Future<void> initialize(bool isNewPet) async {
    try {
      if (isNewPet) {
        await _showCreatePetDialog();
      } else {
        await _loadExistingPet();
      }
      notifyListeners();
    } catch (e) {
      setError('Unable to initialize pet. Please try again.');
    }
  }

  Future<void> _showCreatePetDialog() async {
    final response = await _dialogService.showDialog(
      title: 'Name Your Pet',
      description: 'What would you like to name your new pet?',
      barrierDismissible: false,
    );

    if (response?.confirmed ?? false) {
      final name = response?.data ?? 'My Pet';
      await _createNewPet(name);
    }
  }

  Future<void> _createNewPet(String name) async {
    try {
      await _petService.createPet(name);
      await _loadExistingPet();
      _analyticService.logPetCreated(name);
    } catch (e) {
      setError('Failed to create your pet. Please try again.');
    }
  }

  Future<void> _loadExistingPet() async {
    try {
      _pet = await _petService.getCurrentPet();
      notifyListeners();
    } catch (e) {
      setError('Failed to load your pet. Please try again.');
    }
  }

  Future<void> feedPet() async {
    try {
      await _petService.feedPet();
      await _loadExistingPet();
      _analyticService.logPetAction('feed');
    } catch (e) {
      setError(e.toString());
    }
  }

  Future<void> playWithPet() async {
    try {
      await _petService.playWithPet();
      await _loadExistingPet();
      _analyticService.logPetAction('play');
    } catch (e) {
      setError(e.toString());
    }
  }

  Future<void> putPetToSleep() async {
    try {
      await _petService.putPetToSleep();
      await _loadExistingPet();
      _analyticService.logPetAction('sleep');
    } catch (e) {
      setError(e.toString());
    }
  }
}
