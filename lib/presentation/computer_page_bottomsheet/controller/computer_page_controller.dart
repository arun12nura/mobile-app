import 'package:dos/core/app_export.dart';import 'package:dos/presentation/computer_page_bottomsheet/models/computer_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the ComputerPageBottomsheet.
///
/// This class manages the state of the ComputerPageBottomsheet, including the
/// current computerPageModelObj
class ComputerPageController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController warrantyDetailsController = TextEditingController();

TextEditingController issuesController = TextEditingController();

Rx<ComputerPageModel> computerPageModelObj = ComputerPageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); nameController.dispose(); warrantyDetailsController.dispose(); issuesController.dispose(); } 
 }
