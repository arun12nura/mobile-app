import '../controller/settings_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettingsPageScreen.
///
/// This class ensures that the SettingsPageController is created when the
/// SettingsPageScreen is first loaded.
class SettingsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsPageController());
  }
}
