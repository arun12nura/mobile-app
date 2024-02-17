import 'package:dos/core/app_export.dart';import 'package:dos/presentation/bike_page_bottomsheet/models/bike_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the BikePageBottomsheet.
///
/// This class manages the state of the BikePageBottomsheet, including the
/// current bikePageModelObj
class BikePageController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController issuesController = TextEditingController();

Rx<BikePageModel> bikePageModelObj = BikePageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); nameController.dispose(); issuesController.dispose(); } 
 }
