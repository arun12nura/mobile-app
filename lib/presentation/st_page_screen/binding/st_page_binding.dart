import '../controller/st_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StPageScreen.
///
/// This class ensures that the StPageController is created when the
/// StPageScreen is first loaded.
class StPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StPageController());
  }
}
