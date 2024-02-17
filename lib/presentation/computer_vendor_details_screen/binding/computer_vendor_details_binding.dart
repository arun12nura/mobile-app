import '../controller/computer_vendor_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ComputerVendorDetailsScreen.
///
/// This class ensures that the ComputerVendorDetailsController is created when the
/// ComputerVendorDetailsScreen is first loaded.
class ComputerVendorDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerVendorDetailsController());
  }
}
