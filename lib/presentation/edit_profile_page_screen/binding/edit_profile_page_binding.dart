import '../controller/edit_profile_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditProfilePageScreen.
///
/// This class ensures that the EditProfilePageController is created when the
/// EditProfilePageScreen is first loaded.
class EditProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfilePageController());
  }
}
