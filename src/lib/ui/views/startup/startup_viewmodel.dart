import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:for_tamagochi/app/app.locator.dart';
import 'package:for_tamagochi/app/app.router.dart';
import 'package:for_tamagochi/services/pet_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _petService = locator<PetService>();

  Future<void> runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 2));

    try {
      final pet = await _petService.getCurrentPet();
      if (pet != null) {
        await _navigationService.replaceWith(Routes.petView);
      } else {
        await _navigationService.replaceWith(Routes.petView,
            arguments: const PetViewArguments(isNewPet: true));
      }
    } catch (e) {
      setError('Failed to load your pet. Please try again.');
    }
  }
}
