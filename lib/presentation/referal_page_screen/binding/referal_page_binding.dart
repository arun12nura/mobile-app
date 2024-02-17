import '../controller/referal_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReferalPageScreen.
///
/// This class ensures that the ReferalPageController is created when the
/// ReferalPageScreen is first loaded.
class ReferalPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferalPageController());
  }
}
