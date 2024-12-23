import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:for_tamagochi/ui/common/app_colors.dart';
import 'package:for_tamagochi/ui/bottom_sheets/pet_shop/pet_shop_sheet_model.dart';

class PetShopSheet extends StackedView<PetShopSheetModel> {
  final Function(SheetResponse)? completer;
  final SheetRequest request;

  const PetShopSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PetShopSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Pet Shop',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          if (viewModel.hasError)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                viewModel.modelError.toString(),
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          _buildShopItem(
            'Food Pack',
            'Restore 50% hunger',
            Icons.restaurant,
            () => viewModel.purchaseItem('food_pack'),
          ),
          const SizedBox(height: 10),
          _buildShopItem(
            'Medicine',
            'Restore 50% health',
            Icons.medical_services,
            () => viewModel.purchaseItem('medicine'),
          ),
          const SizedBox(height: 10),
          _buildShopItem(
            'Toy',
            'Increase happiness by 50%',
            Icons.toys,
            () => viewModel.purchaseItem('toy'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kcPrimaryColor,
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () => completer?.call(SheetResponse(confirmed: true)),
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShopItem(
    String name,
    String description,
    IconData icon,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: kcPrimaryColor),
      title: Text(name),
      subtitle: Text(description),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kcPrimaryColor,
        ),
        onPressed: onTap,
        child: const Text(
          'Buy',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  PetShopSheetModel viewModelBuilder(BuildContext context) =>
      PetShopSheetModel();
}
