import '../controller/ev_car_requested_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EvCarRequestedPageScreen.
///
/// This class ensures that the EvCarRequestedPageController is created when the
/// EvCarRequestedPageScreen is first loaded.
class EvCarRequestedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EvCarRequestedPageController());
  }
}
