import 'package:dos/core/app_export.dart';import 'package:dos/presentation/ev_car_page_bottomsheet/models/ev_car_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the EvCarPageBottomsheet.
///
/// This class manages the state of the EvCarPageBottomsheet, including the
/// current evCarPageModelObj
class EvCarPageController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController issuesController = TextEditingController();

Rx<EvCarPageModel> evCarPageModelObj = EvCarPageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); nameController.dispose(); issuesController.dispose(); } 
 }
