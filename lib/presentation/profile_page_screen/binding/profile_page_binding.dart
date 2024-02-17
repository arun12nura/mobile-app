import '../controller/profile_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilePageScreen.
///
/// This class ensures that the ProfilePageController is created when the
/// ProfilePageScreen is first loaded.
class ProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePageController());
  }
}
