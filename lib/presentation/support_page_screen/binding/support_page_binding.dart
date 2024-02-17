import '../controller/support_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SupportPageScreen.
///
/// This class ensures that the SupportPageController is created when the
/// SupportPageScreen is first loaded.
class SupportPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupportPageController());
  }
}
