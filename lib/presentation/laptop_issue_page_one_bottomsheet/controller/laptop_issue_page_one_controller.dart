import 'package:dos/core/app_export.dart';import 'package:dos/presentation/laptop_issue_page_one_bottomsheet/models/laptop_issue_page_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the LaptopIssuePageOneBottomsheet.
///
/// This class manages the state of the LaptopIssuePageOneBottomsheet, including the
/// current laptopIssuePageOneModelObj
class LaptopIssuePageOneController extends GetxController {TextEditingController issuesController = TextEditingController();

Rx<LaptopIssuePageOneModel> laptopIssuePageOneModelObj = LaptopIssuePageOneModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); issuesController.dispose(); } 
 }
