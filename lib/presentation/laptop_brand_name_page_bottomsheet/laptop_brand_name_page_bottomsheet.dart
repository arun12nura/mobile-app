import 'controller/laptop_brand_name_page_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';import 'package:dos/presentation/laptop_page_bottomsheet/controller/laptop_page_controller.dart';
// ignore_for_file: must_be_immutable
class LaptopBrandNamePageBottomsheet extends StatelessWidget {LaptopBrandNamePageBottomsheet(this.controller, {Key? key}) : super(key: key);

LaptopBrandNamePageController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 18.v), _buildSelectorRadioGroup(), SizedBox(height: 18.v), _buildBrandNameColumn()])); } 
/// Section Widget
Widget _buildSelectorRadioGroup() { return Padding(padding: EdgeInsets.only(left: 29.h, right: 34.h), child: Obx(() => Row(children: [CustomRadioButton(text: "lbl_laptop".tr, value: controller.laptopBrandNamePageModelObj.value.radioList.value[0], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}), Padding(padding: EdgeInsets.only(left: 80.h), child: CustomRadioButton(text: "lbl_computer".tr, value: controller.laptopBrandNamePageModelObj.value.radioList.value[1], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}))]))); } 
/// Section Widget
Widget _buildBrandNameColumn() { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v), decoration: AppDecoration.outlineBlack900013.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgComputer, height: 16.v, width: 24.h, margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_brand_name".tr, style: theme.textTheme.bodyMedium))]), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 24.h, right: 189.h), child: Obx(() => Column(children: [Padding(padding: EdgeInsets.only(right: 22.h), child: CustomRadioButton(text: "lbl_hp".tr, value: controller.laptopBrandNamePageModelObj.value.radioList1.value[0], groupValue: controller.brandName.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {controller.brandName.value = value;})), Padding(padding: EdgeInsets.only(top: 18.v), child: CustomRadioButton(text: "lbl_asus".tr, value: controller.laptopBrandNamePageModelObj.value.radioList1.value[1], groupValue: controller.brandName.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {controller.brandName.value = value;}))]))), SizedBox(height: 125.v), CustomElevatedButton(width: 88.h, text: "lbl_submit".tr, onPressed: () {onTapSubmit();}, alignment: Alignment.center), SizedBox(height: 2.v)])); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [LaptopPageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [LaptopPageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapSubmit() { Get.bottomSheet(LaptopPageBottomsheet(Get.put(LaptopPageController(),),),isScrollControlled: true,); } 
 }
