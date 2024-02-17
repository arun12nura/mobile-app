import 'package:dos/core/app_export.dart';
import 'package:dos/presentation/referal_page_screen/models/referal_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReferalPageScreen.
///
/// This class manages the state of the ReferalPageScreen, including the
/// current referalPageModelObj
class ReferalPageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ReferalPageModel> referalPageModelObj = ReferalPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
