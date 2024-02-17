import '../controller/change_locatoin_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangeLocatoinPageScreen.
///
/// This class ensures that the ChangeLocatoinPageController is created when the
/// ChangeLocatoinPageScreen is first loaded.
class ChangeLocatoinPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeLocatoinPageController());
  }
}
