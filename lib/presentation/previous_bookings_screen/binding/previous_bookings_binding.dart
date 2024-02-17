import '../controller/previous_bookings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PreviousBookingsScreen.
///
/// This class ensures that the PreviousBookingsController is created when the
/// PreviousBookingsScreen is first loaded.
class PreviousBookingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreviousBookingsController());
  }
}
