import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:for_tamagochi/ui/common/app_colors.dart';
import 'package:for_tamagochi/ui/common/ui_helpers.dart';
import 'package:for_tamagochi/ui/views/pet/pet_viewmodel.dart';
import 'package:for_tamagochi/ui/views/pet/widgets/pet_stats_widget.dart';
import 'package:for_tamagochi/ui/views/pet/widgets/pet_actions_widget.dart';
import 'package:for_tamagochi/ui/views/pet/widgets/pet_animation_widget.dart';

class PetView extends StackedView<PetViewModel> {
  final bool isNewPet;

  const PetView({Key? key, this.isNewPet = false}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PetViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      appBar: AppBar(
        title: const Text('My Tamagotchi'),
        backgroundColor: kcPrimaryColor,
      ),
      body: viewModel.isBusy
          ? const Center(child: CircularProgressIndicator())
          : viewModel.hasError
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      viewModel.modelError.toString(),
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : !viewModel.hasPet
                  ? const Center(
                      child: Text(
                        'No pet found. Please create a new pet.',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            PetAnimationWidget(
                              status: viewModel.pet!.status,
                              name: viewModel.pet!.name,
                            ),
                            verticalSpaceMedium,
                            PetStatsWidget(pet: viewModel.pet!),
                            verticalSpaceMedium,
                            PetActionsWidget(
                              onFeed: viewModel.feedPet,
                              onPlay: viewModel.playWithPet,
                              onSleep: viewModel.putPetToSleep,
                              petStatus: viewModel.pet!.status,
                            ),
                          ],
                        ),
                      ),
                    ),
    );
  }

  @override
  PetViewModel viewModelBuilder(BuildContext context) => PetViewModel();

  @override
  void onViewModelReady(PetViewModel viewModel) =>
      viewModel.initialize(isNewPet);
}
