import 'controller/laptop_page_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:dos/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class LaptopPageBottomsheet extends StatelessWidget {LaptopPageBottomsheet(this.controller, {Key? key}) : super(key: key);

LaptopPageController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildRadioGroupSelector(), SizedBox(height: 16.v), _buildBrandName(), SizedBox(height: 11.v), _buildModelName(), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomTextFormField(controller: controller.warrantyDetailsController, hintText: "msg_warranty_details".tr, prefix: Container(margin: EdgeInsets.fromLTRB(15.h, 13.v, 6.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgShield, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 50.v))), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomTextFormField(controller: controller.issuesController, hintText: "lbl_issues".tr, textInputAction: TextInputAction.done, prefix: Padding(padding: EdgeInsets.fromLTRB(18.h, 16.v, 30.h, 16.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 18.adaptSize, width: 18.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 12.v, width: 10.h, margin: EdgeInsets.fromLTRB(22.h, 16.v, 9.889999.h, 16.v))])), prefixConstraints: BoxConstraints(maxHeight: 50.v))), SizedBox(height: 20.v), CustomElevatedButton(width: 88.h, text: "lbl_submit".tr, onPressed: () {onTapSubmit();}), SizedBox(height: 19.v)])); } 
/// Section Widget
Widget _buildRadioGroupSelector() { return Padding(padding: EdgeInsets.symmetric(horizontal: 31.h), child: Obx(() => Row(children: [CustomRadioButton(text: "lbl_laptop".tr, value: controller.laptopPageModelObj.value.radioList.value[0], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}), Padding(padding: EdgeInsets.only(left: 80.h), child: CustomRadioButton(text: "lbl_computer".tr, value: controller.laptopPageModelObj.value.radioList.value[1], groupValue: controller.radioGroup.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.radioGroup.value = value;}))]))); } 
/// Section Widget
Widget _buildBrandName() { return Obx(() => Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomRadioButton(text: "lbl_brand_name".tr, value: "lbl_brand_name".tr, groupValue: controller.radioGroup1.value, padding: EdgeInsets.fromLTRB(2.h, 15.v, 30.h, 15.v), textStyle: theme.textTheme.bodyMedium, decoration: RadioStyleHelper.outlineBlack, onChange: (value) {controller.radioGroup1.value = value;}))); } 
/// Section Widget
Widget _buildModelName() { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_z".tr, style: CustomTextStyles.bodyLargeLibreBarcode39Extended)), Padding(padding: EdgeInsets.only(left: 6.h, top: 1.v), child: Text("lbl_model_name".tr, style: theme.textTheme.bodyMedium))])); } 
/// Navigates to the laptopVendorDetailsScreen when the action is triggered.
onTapSubmit() { Get.toNamed(AppRoutes.laptopVendorDetailsScreen, ); } 
 }