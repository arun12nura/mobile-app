import '../controller/requested_page_nbike_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RequestedPageNbikeScreen.
///
/// This class ensures that the RequestedPageNbikeController is created when the
/// RequestedPageNbikeScreen is first loaded.
class RequestedPageNbikeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestedPageNbikeController());
  }
}
