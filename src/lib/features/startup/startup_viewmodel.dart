import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:for_tamagochi/app/app.locator.dart';
import 'package:for_tamagochi/app/app.router.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 1));
    
    // Navigate to PetView instead of HomeView
    await _navigationService.replaceWith(Routes.petView);
  }
}