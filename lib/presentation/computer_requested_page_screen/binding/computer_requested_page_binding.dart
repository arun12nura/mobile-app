import '../controller/computer_requested_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ComputerRequestedPageScreen.
///
/// This class ensures that the ComputerRequestedPageController is created when the
/// ComputerRequestedPageScreen is first loaded.
class ComputerRequestedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerRequestedPageController());
  }
}
