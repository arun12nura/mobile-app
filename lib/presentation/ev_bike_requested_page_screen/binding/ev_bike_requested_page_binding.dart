import '../controller/ev_bike_requested_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EvBikeRequestedPageScreen.
///
/// This class ensures that the EvBikeRequestedPageController is created when the
/// EvBikeRequestedPageScreen is first loaded.
class EvBikeRequestedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EvBikeRequestedPageController());
  }
}
