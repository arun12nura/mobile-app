import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/computer_page_bottomsheet/computer_page_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class LaptopBrandNamePageTwoBottomsheet extends StatelessWidget {LaptopBrandNamePageTwoBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

List<String> radioList = ["lbl_laptop", "lbl_computer"];

String warrantyDetails = "";

List<String> radioList1 = ["msg_company_warranty", "lbl_no_warranty2"];

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 18.v), _buildSelectorSection(context), SizedBox(height: 18.v), _buildBrandNameSection(context)])); } 
/// Section Widget
Widget _buildSelectorSection(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 17.h, right: 45.h), child: Row(children: [CustomRadioButton(text: "Laptop", value: radioList[0], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}), Padding(padding: EdgeInsets.only(left: 80.h), child: CustomRadioButton(text: "Computer", value: radioList[1], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}))]))); } 
/// Section Widget
Widget _buildBrandNameSection(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), decoration: AppDecoration.outlineBlack900013.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgShield, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h, top: 4.v), child: Text("Warranty Details", style: theme.textTheme.bodyMedium))]), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 23.h, right: 57.h), child: Column(children: [CustomRadioButton(text: "COMPANY WARRANTY", value: radioList1[0], groupValue: warrantyDetails, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {warrantyDetails = value;}), Padding(padding: EdgeInsets.only(left: 1.h, top: 13.v, right: 55.h), child: CustomRadioButton(text: "NO WARRANTY", value: radioList1[1], groupValue: warrantyDetails, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {warrantyDetails = value;}))])), SizedBox(height: 130.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}, alignment: Alignment.center), SizedBox(height: 6.v)])); } 

/// Shows a modal bottom sheet with [ComputerPageBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ComputerPageBottomsheet(),isScrollControlled: true); } 
 }
