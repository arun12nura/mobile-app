import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class LaptopBrandNamePageBottomsheet extends StatelessWidget {LaptopBrandNamePageBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

List<String> radioList = ["lbl_laptop", "lbl_computer"];

String brandName = "";

List<String> radioList1 = ["lbl_hp", "lbl_asus"];

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 18.v), _buildSelectorRadioGroup(context), SizedBox(height: 18.v), _buildBrandNameColumn(context)])); } 
/// Section Widget
Widget _buildSelectorRadioGroup(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 29.h, right: 34.h), child: Row(children: [CustomRadioButton(text: "Laptop", value: radioList[0], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}), Padding(padding: EdgeInsets.only(left: 80.h), child: CustomRadioButton(text: "Computer", value: radioList[1], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}))])); } 
/// Section Widget
Widget _buildBrandNameColumn(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v), decoration: AppDecoration.outlineBlack900013.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgComputer, height: 16.v, width: 24.h, margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Brand Name", style: theme.textTheme.bodyMedium))]), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 24.h, right: 189.h), child: Column(children: [Padding(padding: EdgeInsets.only(right: 22.h), child: CustomRadioButton(text: "HP", value: radioList1[0], groupValue: brandName, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {brandName = value;})), Padding(padding: EdgeInsets.only(top: 18.v), child: CustomRadioButton(text: "ASUS", value: radioList1[1], groupValue: brandName, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {brandName = value;}))])), SizedBox(height: 125.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}, alignment: Alignment.center), SizedBox(height: 2.v)])); } 

/// Shows a modal bottom sheet with [LaptopPageBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>LaptopPageBottomsheet(),isScrollControlled: true); } 
 }
