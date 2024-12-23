import 'package:for_tamagochi/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:for_tamagochi/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:for_tamagochi/ui/dialogs/pet_status/pet_status_dialog.dart';
import 'package:for_tamagochi/ui/bottom_sheets/pet_shop/pet_shop_sheet.dart';
import 'package:for_tamagochi/ui/views/startup/startup_view.dart';
import 'package:for_tamagochi/ui/views/pet/pet_view.dart';
import 'package:for_tamagochi/services/pet_service.dart';
import 'package:for_tamagochi/services/analytic_service.dart';
import 'package:for_tamagochi/repositories/pet_repository.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: PetView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: AnalyticService),
    LazySingleton(classType: PetRepository),
    LazySingleton(
      classType: PetService,
    ),
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: PetShopSheet),
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: PetStatusDialog),
  ],
)
class App {}