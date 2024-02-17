import '../controller/laptop_requested_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LaptopRequestedPageScreen.
///
/// This class ensures that the LaptopRequestedPageController is created when the
/// LaptopRequestedPageScreen is first loaded.
class LaptopRequestedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LaptopRequestedPageController());
  }
}
