import 'package:dos/core/app_export.dart';import 'package:dos/presentation/accepted_status_screen/models/accepted_status_model.dart';/// A controller class for the AcceptedStatusScreen.
///
/// This class manages the state of the AcceptedStatusScreen, including the
/// current acceptedStatusModelObj
class AcceptedStatusController extends GetxController {Rx<AcceptedStatusModel> acceptedStatusModelObj = AcceptedStatusModel().obs;

 }
