import 'package:stacked/stacked.dart';
import 'package:for_tamagochi/models/pet/pet_model.dart';
import 'package:for_tamagochi/services/pet_service.dart';
import 'package:for_tamagochi/app/app.locator.dart';

class PetShopSheetModel extends BaseViewModel {
  final _petService = locator<PetService>();

  Future<void> purchaseItem(String itemId) async {
    try {
      // Future implementation for purchasing items
      setError('Shop feature coming soon!');
    } catch (e) {
      setError('Failed to purchase item. Please try again.');
    }
  }
}
