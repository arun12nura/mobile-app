import 'package:dos/core/app_export.dart';import 'package:dos/presentation/ev_bike_issue_page_bottomsheet/models/ev_bike_issue_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the EvBikeIssuePageBottomsheet.
///
/// This class manages the state of the EvBikeIssuePageBottomsheet, including the
/// current evBikeIssuePageModelObj
class EvBikeIssuePageController extends GetxController {TextEditingController labelThreeController = TextEditingController();

Rx<EvBikeIssuePageModel> evBikeIssuePageModelObj = EvBikeIssuePageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); labelThreeController.dispose(); } 
 }
