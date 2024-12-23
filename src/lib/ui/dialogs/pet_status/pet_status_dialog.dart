import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:for_tamagochi/models/pet/pet_model.dart';
import 'package:for_tamagochi/ui/common/app_colors.dart';
import 'package:for_tamagochi/ui/dialogs/pet_status/pet_status_dialog_model.dart';

class PetStatusDialog extends StackedView<PetStatusDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const PetStatusDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PetStatusDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              viewModel.pet.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              viewModel.pet.status.emoji,
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 16),
            Text(
              viewModel.statusMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: kcMediumGrey,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              viewModel.statusDetails,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14,
                color: kcMediumGrey,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kcPrimaryColor,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () => completer(DialogResponse(confirmed: true)),
              child: const Text(
                'Close',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PetStatusDialogModel viewModelBuilder(BuildContext context) {
    return PetStatusDialogModel(pet: request.data as Pet);
  }
}
