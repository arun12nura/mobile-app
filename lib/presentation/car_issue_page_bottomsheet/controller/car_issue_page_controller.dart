import 'package:dos/core/app_export.dart';import 'package:dos/presentation/car_issue_page_bottomsheet/models/car_issue_page_model.dart';/// A controller class for the CarIssuePageBottomsheet.
///
/// This class manages the state of the CarIssuePageBottomsheet, including the
/// current carIssuePageModelObj
class CarIssuePageController extends GetxController {Rx<CarIssuePageModel> carIssuePageModelObj = CarIssuePageModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

 }
