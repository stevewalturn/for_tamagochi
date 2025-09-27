import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';
import 'package:for_tamagochi/ui/common/app_colors.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Gap(50),
                Column(
                  children: [
                    const Text(
                      'Hello from STEVE x STACKED!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Gap(25),
                    Text(
                      viewModel.counterLabel,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kcPrimaryColor,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                          ),
                          onPressed: viewModel.incrementCounter,
                          child: const Text(
                            'Increment',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        const Gap(16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kcMediumGrey,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                          ),
                          onPressed: viewModel.resetCounter,
                          child: const Text(
                            'Reset',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: kcPrimaryColor,
                      onPressed: viewModel.showDialog,
                      child: const Text(
                        'Show Dialog',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      color: kcPrimaryColor,
                      onPressed: viewModel.showBottomSheet,
                      child: const Text(
                        'Show Bottom Sheet',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
