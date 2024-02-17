import '../controller/created_account_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatedAccountScreen.
///
/// This class ensures that the CreatedAccountController is created when the
/// CreatedAccountScreen is first loaded.
class CreatedAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatedAccountController());
  }
}
