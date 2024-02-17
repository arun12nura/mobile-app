import 'package:dos/core/app_export.dart';import 'package:dos/presentation/laptop_issue_page_bottomsheet/models/laptop_issue_page_model.dart';/// A controller class for the LaptopIssuePageBottomsheet.
///
/// This class manages the state of the LaptopIssuePageBottomsheet, including the
/// current laptopIssuePageModelObj
class LaptopIssuePageController extends GetxController {Rx<LaptopIssuePageModel> laptopIssuePageModelObj = LaptopIssuePageModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

 }
