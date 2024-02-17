import 'package:dos/core/app_export.dart';import 'package:dos/presentation/change_locatoin_page_screen/models/change_locatoin_page_model.dart';import 'package:flutter/material.dart';/// A controller class for the ChangeLocatoinPageScreen.
///
/// This class manages the state of the ChangeLocatoinPageScreen, including the
/// current changeLocatoinPageModelObj
class ChangeLocatoinPageController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ChangeLocatoinPageModel> changeLocatoinPageModelObj = ChangeLocatoinPageModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
