import 'package:dos/core/app_export.dart';import 'package:dos/presentation/bike_issue_page_bottomsheet/models/bike_issue_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the BikeIssuePageBottomsheet.
///
/// This class manages the state of the BikeIssuePageBottomsheet, including the
/// current bikeIssuePageModelObj
class BikeIssuePageController extends GetxController {TextEditingController labelThreeController = TextEditingController();

Rx<BikeIssuePageModel> bikeIssuePageModelObj = BikeIssuePageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); labelThreeController.dispose(); } 
 }
