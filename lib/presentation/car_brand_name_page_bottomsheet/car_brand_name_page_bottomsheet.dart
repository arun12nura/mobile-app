import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class CarBrandNamePageBottomsheet extends StatelessWidget {CarBrandNamePageBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

List<String> radioList = ["lbl_normal", "lbl_ev"];

String radioGroup1 = "";

List<String> radioList1 = ["lbl_nexa", "lbl_maruti_suzuki", "lbl_tata"];

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildRadioGroupSelector(context), SizedBox(height: 17.v), _buildBrandNameSection(context)])); } 
/// Section Widget
Widget _buildRadioGroupSelector(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 32.h, right: 88.h), child: Row(children: [CustomRadioButton(text: "Normal", value: radioList[0], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}), Padding(padding: EdgeInsets.only(left: 78.h), child: CustomRadioButton(text: "Ev", value: radioList[1], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}))]))); } 
/// Section Widget
Widget _buildBrandNameSection(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 15.v), decoration: AppDecoration.outlineBlack900013.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.v, width: 24.h), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Brand Name", style: theme.textTheme.bodyMedium))])), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(right: 106.h), child: Column(children: [Padding(padding: EdgeInsets.only(right: 64.h), child: CustomRadioButton(text: "Nexa", value: radioList1[0], groupValue: radioGroup1, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {radioGroup1 = value;})), Padding(padding: EdgeInsets.only(top: 18.v), child: CustomRadioButton(text: "Maruti Suzuki", value: radioList1[1], groupValue: radioGroup1, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {radioGroup1 = value;})), Padding(padding: EdgeInsets.only(left: 3.h, top: 18.v, right: 67.h), child: CustomRadioButton(text: "Tata", value: radioList1[2], groupValue: radioGroup1, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {radioGroup1 = value;}))])), SizedBox(height: 83.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}, alignment: Alignment.center), SizedBox(height: 5.v)])); } 

/// Shows a modal bottom sheet with [CarPageBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CarPageBottomsheet(),isScrollControlled: true); } 
 }
