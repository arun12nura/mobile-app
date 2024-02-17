import '../controller/my_booking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyBookingScreen.
///
/// This class ensures that the MyBookingController is created when the
/// MyBookingScreen is first loaded.
class MyBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBookingController());
  }
}
