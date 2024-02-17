import '../controller/laptop_vendor_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LaptopVendorDetailsScreen.
///
/// This class ensures that the LaptopVendorDetailsController is created when the
/// LaptopVendorDetailsScreen is first loaded.
class LaptopVendorDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LaptopVendorDetailsController());
  }
}
