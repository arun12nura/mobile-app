import '../controller/n_car_requested_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NCarRequestedPageScreen.
///
/// This class ensures that the NCarRequestedPageController is created when the
/// NCarRequestedPageScreen is first loaded.
class NCarRequestedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NCarRequestedPageController());
  }
}
