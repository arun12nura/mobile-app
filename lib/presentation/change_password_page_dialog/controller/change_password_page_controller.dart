import 'package:dos/core/app_export.dart';import 'package:dos/presentation/change_password_page_dialog/models/change_password_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangePasswordPageDialog.
///
/// This class manages the state of the ChangePasswordPageDialog, including the
/// current changePasswordPageModelObj
class ChangePasswordPageController extends GetxController {TextEditingController passwordFieldController = TextEditingController();

TextEditingController newPasswordFieldController = TextEditingController();

TextEditingController retypeNewPasswordFieldController = TextEditingController();

Rx<ChangePasswordPageModel> changePasswordPageModelObj = ChangePasswordPageModel().obs;

@override void onClose() { super.onClose(); passwordFieldController.dispose(); newPasswordFieldController.dispose(); retypeNewPasswordFieldController.dispose(); } 
 }
