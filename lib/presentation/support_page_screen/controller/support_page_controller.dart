import 'package:dos/core/app_export.dart';import 'package:dos/presentation/support_page_screen/models/support_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the SupportPageScreen.
///
/// This class manages the state of the SupportPageScreen, including the
/// current supportPageModelObj
class SupportPageController extends GetxController {TextEditingController nameEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController problemValueEditTextController = TextEditingController();

Rx<SupportPageModel> supportPageModelObj = SupportPageModel().obs;

@override void onClose() { super.onClose(); nameEditTextController.dispose(); emailEditTextController.dispose(); problemValueEditTextController.dispose(); } 
 }
