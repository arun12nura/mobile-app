import 'package:dos/core/app_export.dart';import 'package:dos/presentation/edit_profile_page_screen/models/edit_profile_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfilePageScreen.
///
/// This class manages the state of the EditProfilePageScreen, including the
/// current editProfilePageModelObj
class EditProfilePageController extends GetxController {TextEditingController nameEditTextController = TextEditingController();

TextEditingController phoneEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

Rx<EditProfilePageModel> editProfilePageModelObj = EditProfilePageModel().obs;

@override void onClose() { super.onClose(); nameEditTextController.dispose(); phoneEditTextController.dispose(); emailEditTextController.dispose(); } 
 }
