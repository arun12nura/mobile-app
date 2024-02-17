import 'package:dos/core/app_export.dart';import 'package:dos/presentation/settings_page_screen/models/settings_page_model.dart';/// A controller class for the SettingsPageScreen.
///
/// This class manages the state of the SettingsPageScreen, including the
/// current settingsPageModelObj
class SettingsPageController extends GetxController {Rx<SettingsPageModel> settingsPageModelObj = SettingsPageModel().obs;

 }
