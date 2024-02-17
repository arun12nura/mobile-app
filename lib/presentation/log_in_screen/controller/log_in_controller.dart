import 'package:dos/core/app_export.dart';import 'package:dos/presentation/log_in_screen/models/log_in_model.dart';import 'package:flutter/material.dart';/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {TextEditingController mobileController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LogInModel> logInModelObj = LogInModel().obs;

@override void onClose() { super.onClose(); mobileController.dispose(); passwordController.dispose(); } 
 }
