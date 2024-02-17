import '../controller/accepted_status_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AcceptedStatusScreen.
///
/// This class ensures that the AcceptedStatusController is created when the
/// AcceptedStatusScreen is first loaded.
class AcceptedStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcceptedStatusController());
  }
}
