import '../controller/ev_car_vendor_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EvCarVendorDetailsScreen.
///
/// This class ensures that the EvCarVendorDetailsController is created when the
/// EvCarVendorDetailsScreen is first loaded.
class EvCarVendorDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EvCarVendorDetailsController());
  }
}
