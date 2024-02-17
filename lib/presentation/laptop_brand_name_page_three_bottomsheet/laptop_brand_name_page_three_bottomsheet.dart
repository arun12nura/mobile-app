import 'controller/laptop_brand_name_page_three_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';import 'package:dos/presentation/laptop_page_bottomsheet/controller/laptop_page_controller.dart';
// ignore_for_file: must_be_immutable
class LaptopBrandNamePageThreeBottomsheet extends StatelessWidget {LaptopBrandNamePageThreeBottomsheet(this.controller, {Key? key}) : super(key: key);

LaptopBrandNamePageThreeController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 18.v), _buildSelectorSection(), SizedBox(height: 18.v), _buildBrandNameSection()])); } 
/// Section Widget
Widget _buildSelectorSection() { return Padding(padding: EdgeInsets.only(left: 29.h, right: 34.h), child: Obx(() => Row(children: [CustomRadioButton(text: "lbl_laptop".tr, value: controller.laptopBrandNamePageThreeModelObj.value.radioList.value[0], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}), Padding(padding: EdgeInsets.only(left: 80.h), child: CustomRadioButton(text: "lbl_computer".tr, value: controller.laptopBrandNamePageThreeModelObj.value.radioList.value[1], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}))]))); } 
/// Section Widget
Widget _buildBrandNameSection() { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), decoration: AppDecoration.outlineBlack900013.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgShield, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h, top: 4.v), child: Text("msg_warranty_details".tr, style: theme.textTheme.bodyMedium))]), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 23.h, right: 57.h), child: Obx(() => Column(children: [CustomRadioButton(text: "msg_company_warranty".tr, value: controller.laptopBrandNamePageThreeModelObj.value.radioList1.value[0], groupValue: controller.warrantyDetails.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {controller.warrantyDetails.value = value;}), Padding(padding: EdgeInsets.only(top: 18.v, right: 56.h), child: CustomRadioButton(text: "lbl_no_warranty2".tr, value: controller.laptopBrandNamePageThreeModelObj.value.radioList1.value[1], groupValue: controller.warrantyDetails.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {controller.warrantyDetails.value = value;}))]))), SizedBox(height: 125.v), CustomElevatedButton(width: 88.h, text: "lbl_submit".tr, onPressed: () {onTapSubmit();}, alignment: Alignment.center), SizedBox(height: 6.v)])); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [LaptopPageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [LaptopPageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapSubmit() { Get.bottomSheet(LaptopPageBottomsheet(Get.put(LaptopPageController(),),),isScrollControlled: true,); } 
 }
