import '../controller/n_bike_vendor_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NBikeVendorDetailsScreen.
///
/// This class ensures that the NBikeVendorDetailsController is created when the
/// NBikeVendorDetailsScreen is first loaded.
class NBikeVendorDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NBikeVendorDetailsController());
  }
}
