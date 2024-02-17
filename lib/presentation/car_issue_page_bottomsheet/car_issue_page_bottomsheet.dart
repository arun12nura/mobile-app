import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class CarIssuePageBottomsheet extends StatelessWidget {CarIssuePageBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

List<String> radioList = ["lbl_normal", "lbl_ev"];

String radioGroup1 = "";

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildRadioGroupSection(context), SizedBox(height: 16.v), _buildIssuesSection(context), SizedBox(height: 7.v), _buildFrameOneSection(context), SizedBox(height: 11.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}), SizedBox(height: 19.v)])); } 
/// Section Widget
Widget _buildRadioGroupSection(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 32.h, right: 88.h), child: Row(children: [CustomRadioButton(text: "Normal", value: radioList[0], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}), Padding(padding: EdgeInsets.only(left: 78.h), child: CustomRadioButton(text: "Ev", value: radioList[1], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}))]))); } 
/// Section Widget
Widget _buildIssuesSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomRadioButton(text: "Issues", value: "Issues", groupValue: radioGroup1, padding: EdgeInsets.fromLTRB(5.h, 15.v, 30.h, 15.v), textStyle: theme.textTheme.bodyMedium, onChange: (value) {radioGroup1 = value;})); } 
/// Section Widget
Widget _buildFrameOneSection(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [CustomImageView(imagePath: ImageConstant.imgCameraGray900, height: 18.v, width: 22.h, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 3.h, top: 1.v), child: Text("Upload photo", style: theme.textTheme.bodyMedium))])); } 

/// Shows a modal bottom sheet with [CarPageBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CarPageBottomsheet(),isScrollControlled: true); } 
 }
