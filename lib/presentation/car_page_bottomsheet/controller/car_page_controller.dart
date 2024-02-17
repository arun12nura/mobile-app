import 'package:dos/core/app_export.dart';import 'package:dos/presentation/car_page_bottomsheet/models/car_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the CarPageBottomsheet.
///
/// This class manages the state of the CarPageBottomsheet, including the
/// current carPageModelObj
class CarPageController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController issuesController = TextEditingController();

Rx<CarPageModel> carPageModelObj = CarPageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); nameController.dispose(); issuesController.dispose(); } 
 }
