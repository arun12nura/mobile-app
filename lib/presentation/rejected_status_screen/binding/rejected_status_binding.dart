import '../controller/rejected_status_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RejectedStatusScreen.
///
/// This class ensures that the RejectedStatusController is created when the
/// RejectedStatusScreen is first loaded.
class RejectedStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RejectedStatusController());
  }
}
