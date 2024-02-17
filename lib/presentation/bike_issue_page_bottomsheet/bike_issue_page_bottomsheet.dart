import 'controller/bike_issue_page_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:dos/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/bike_page_bottomsheet/bike_page_bottomsheet.dart';import 'package:dos/presentation/bike_page_bottomsheet/controller/bike_page_controller.dart';
// ignore_for_file: must_be_immutable
class BikeIssuePageBottomsheet extends StatelessWidget {BikeIssuePageBottomsheet(this.controller, {Key? key}) : super(key: key);

BikeIssuePageController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 32.h, right: 48.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Opacity(opacity: 0.6, child: SizedBox(width: 87.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_normal".tr, style: theme.textTheme.bodyLarge))]))), _buildRadioButtonSection()]))), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomTextFormField(controller: controller.labelThreeController, hintText: "lbl_issues".tr, textInputAction: TextInputAction.done, prefix: Padding(padding: EdgeInsets.fromLTRB(18.h, 14.920013.v, 30.h, 30.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.79.v, width: 18.h), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 11.19.v, width: 10.h, margin: EdgeInsets.fromLTRB(22.h, 20.519989.v, 9.889999.h, 20.519989.v))])), prefixConstraints: BoxConstraints(maxHeight: 185.v), maxLines: 10, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL40)), SizedBox(height: 7.v), _buildFrameOneSection(), SizedBox(height: 11.v), CustomElevatedButton(width: 88.h, text: "lbl_submit".tr, onPressed: () {onTapSubmit();}), SizedBox(height: 19.v)])); } 
/// Section Widget
Widget _buildRadioButtonSection() { return Opacity(opacity: 0.6, child: Obx(() => CustomRadioButton(text: "lbl_ev".tr, value: "lbl_ev".tr, groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}))); } 
/// Section Widget
Widget _buildFrameOneSection() { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomImageView(imagePath: ImageConstant.imgCameraGray900, height: 18.v, width: 22.h, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 3.h, top: 1.v), child: Text("lbl_upload_photo".tr, style: theme.textTheme.bodyMedium))])); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [BikePageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [BikePageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapSubmit() { Get.bottomSheet(BikePageBottomsheet(Get.put(BikePageController(),),),isScrollControlled: true,); } 
 }
