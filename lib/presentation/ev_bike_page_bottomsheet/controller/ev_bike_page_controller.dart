import 'package:dos/core/app_export.dart';import 'package:dos/presentation/ev_bike_page_bottomsheet/models/ev_bike_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the EvBikePageBottomsheet.
///
/// This class manages the state of the EvBikePageBottomsheet, including the
/// current evBikePageModelObj
class EvBikePageController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController issuesController = TextEditingController();

Rx<EvBikePageModel> evBikePageModelObj = EvBikePageModel().obs;

Rx<String> radioGroup = "".obs;

@override void onClose() { super.onClose(); nameController.dispose(); issuesController.dispose(); } 
 }
