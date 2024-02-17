import '../controller/n_car_vendor_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NCarVendorDetailsScreen.
///
/// This class ensures that the NCarVendorDetailsController is created when the
/// NCarVendorDetailsScreen is first loaded.
class NCarVendorDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NCarVendorDetailsController());
  }
}
