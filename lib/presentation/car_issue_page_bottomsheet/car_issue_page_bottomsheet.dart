import 'controller/car_issue_page_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';import 'package:dos/presentation/car_page_bottomsheet/controller/car_page_controller.dart';
// ignore_for_file: must_be_immutable
class CarIssuePageBottomsheet extends StatelessWidget {CarIssuePageBottomsheet(this.controller, {Key? key}) : super(key: key);

CarIssuePageController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildRadioGroupSection(), SizedBox(height: 16.v), _buildIssuesSection(), SizedBox(height: 7.v), _buildFrameOneSection(), SizedBox(height: 11.v), CustomElevatedButton(width: 88.h, text: "lbl_submit".tr, onPressed: () {onTapSubmit();}), SizedBox(height: 19.v)])); } 
/// Section Widget
Widget _buildRadioGroupSection() { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 32.h, right: 88.h), child: Obx(() => Row(children: [CustomRadioButton(text: "lbl_normal".tr, value: controller.carIssuePageModelObj.value.radioList.value[0], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}), Padding(padding: EdgeInsets.only(left: 78.h), child: CustomRadioButton(text: "lbl_ev".tr, value: controller.carIssuePageModelObj.value.radioList.value[1], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}))])))); } 
/// Section Widget
Widget _buildIssuesSection() { return Obx(() => Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomRadioButton(text: "lbl_issues".tr, value: "lbl_issues".tr, groupValue: controller.radioGroup1.value, padding: EdgeInsets.fromLTRB(5.h, 15.v, 30.h, 15.v), textStyle: theme.textTheme.bodyMedium, onChange: (value) {controller.radioGroup1.value = value;}))); } 
/// Section Widget
Widget _buildFrameOneSection() { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomImageView(imagePath: ImageConstant.imgCameraGray900, height: 18.v, width: 22.h, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 3.h, top: 1.v), child: Text("lbl_upload_photo".tr, style: theme.textTheme.bodyMedium))])); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [CarPageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [CarPageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapSubmit() { Get.bottomSheet(CarPageBottomsheet(Get.put(CarPageController(),),),isScrollControlled: true,); } 
 }
