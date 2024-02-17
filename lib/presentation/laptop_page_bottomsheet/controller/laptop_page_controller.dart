import 'package:dos/core/app_export.dart';import 'package:dos/presentation/laptop_page_bottomsheet/models/laptop_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the LaptopPageBottomsheet.
///
/// This class manages the state of the LaptopPageBottomsheet, including the
/// current laptopPageModelObj
class LaptopPageController extends GetxController {TextEditingController warrantyDetailsController = TextEditingController();

TextEditingController issuesController = TextEditingController();

Rx<LaptopPageModel> laptopPageModelObj = LaptopPageModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

@override void onClose() { super.onClose(); warrantyDetailsController.dispose(); issuesController.dispose(); } 
 }
