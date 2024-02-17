import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class LaptopIssuePageBottomsheet extends StatelessWidget {LaptopIssuePageBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

List<String> radioList = ["lbl_laptop", "lbl_computer"];

String radioGroup1 = "";

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildRadioGroupSelector(context), SizedBox(height: 16.v), _buildIssuesRadio(context), SizedBox(height: 7.v), _buildRowFrameOne(context), SizedBox(height: 11.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}), SizedBox(height: 19.v)])); } 
/// Section Widget
Widget _buildRadioGroupSelector(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 31.h), child: Row(children: [CustomRadioButton(text: "Laptop", value: radioList[0], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}), Padding(padding: EdgeInsets.only(left: 80.h), child: CustomRadioButton(text: "Computer", value: radioList[1], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}))])); } 
/// Section Widget
Widget _buildIssuesRadio(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomRadioButton(text: "Issues", value: "Issues", groupValue: radioGroup1, padding: EdgeInsets.fromLTRB(5.h, 15.v, 30.h, 15.v), textStyle: theme.textTheme.bodyMedium, onChange: (value) {radioGroup1 = value;})); } 
/// Section Widget
Widget _buildRowFrameOne(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomImageView(imagePath: ImageConstant.imgCameraGray900, height: 18.v, width: 22.h, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 3.h, top: 1.v), child: Text("Upload photo", style: theme.textTheme.bodyMedium))])); } 

/// Shows a modal bottom sheet with [LaptopPageBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>LaptopPageBottomsheet(),isScrollControlled: true); } 
 }
