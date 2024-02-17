import 'controller/dlete_acc_page_controller.dart';import 'package:dos/core/app_export.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class DleteAccPageDialog extends StatelessWidget {DleteAccPageDialog(this.controller, {Key? key}) : super(key: key);

DleteAccPageController controller;

@override Widget build(BuildContext context) { return Container(width: 199.h, padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 7.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.circleBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(width: 111.h, child: Text("msg_delete_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleLargeMedium)), Text("msg2".tr, style: CustomTextStyles.titleLargeMedium), GestureDetector(onTap: () {onTapTxtDelete();}, child: Text("lbl_delete".tr, style: CustomTextStyles.titleLargeRedA700)), Text("msg2".tr, style: CustomTextStyles.titleLargeMedium), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtCancel();}, child: Padding(padding: EdgeInsets.only(right: 60.h), child: Text("lbl_cancel".tr, style: CustomTextStyles.titleLargeMedium))))])); } 
/// Navigates to the logInScreen when the action is triggered.
onTapTxtDelete() { Get.toNamed(AppRoutes.logInScreen, ); } 
/// Navigates to the settingsPageScreen when the action is triggered.
onTapTxtCancel() { Get.toNamed(AppRoutes.settingsPageScreen, ); } 
 }
