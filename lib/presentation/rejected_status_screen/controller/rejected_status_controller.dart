import 'package:dos/core/app_export.dart';import 'package:dos/presentation/rejected_status_screen/models/rejected_status_model.dart';/// A controller class for the RejectedStatusScreen.
///
/// This class manages the state of the RejectedStatusScreen, including the
/// current rejectedStatusModelObj
class RejectedStatusController extends GetxController {Rx<RejectedStatusModel> rejectedStatusModelObj = RejectedStatusModel().obs;

 }
