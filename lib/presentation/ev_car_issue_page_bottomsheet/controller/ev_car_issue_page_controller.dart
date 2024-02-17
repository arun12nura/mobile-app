import 'package:dos/core/app_export.dart';import 'package:dos/presentation/ev_car_issue_page_bottomsheet/models/ev_car_issue_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the EvCarIssuePageBottomsheet.
///
/// This class manages the state of the EvCarIssuePageBottomsheet, including the
/// current evCarIssuePageModelObj
class EvCarIssuePageController extends GetxController {TextEditingController labelThreeController = TextEditingController();

Rx<EvCarIssuePageModel> evCarIssuePageModelObj = EvCarIssuePageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); labelThreeController.dispose(); } 
 }
