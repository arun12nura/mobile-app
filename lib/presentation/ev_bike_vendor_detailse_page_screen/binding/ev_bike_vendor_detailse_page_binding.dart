import '../controller/ev_bike_vendor_detailse_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EvBikeVendorDetailsePageScreen.
///
/// This class ensures that the EvBikeVendorDetailsePageController is created when the
/// EvBikeVendorDetailsePageScreen is first loaded.
class EvBikeVendorDetailsePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EvBikeVendorDetailsePageController());
  }
}
