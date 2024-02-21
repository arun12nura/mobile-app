import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:dos/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class LaptopPageBottomsheet extends StatelessWidget {LaptopPageBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

List<String> radioList = ["lbl_laptop", "lbl_computer"];

String radioGroup1 = "";

TextEditingController warrantyDetailsController = TextEditingController();

TextEditingController issuesController = TextEditingController();

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildRadioGroupSelector(context), SizedBox(height: 16.v), _buildBrandName(context), SizedBox(height: 11.v), _buildModelName(context), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomTextFormField(controller: warrantyDetailsController, hintText: "Warranty Details", prefix: Container(margin: EdgeInsets.fromLTRB(15.h, 13.v, 6.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgShield, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 50.v))), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomTextFormField(controller: issuesController, hintText: "Issues", textInputAction: TextInputAction.done, prefix: Padding(padding: EdgeInsets.fromLTRB(18.h, 16.v, 30.h, 16.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 18.adaptSize, width: 18.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 12.v, width: 10.h, margin: EdgeInsets.fromLTRB(22.h, 16.v, 9.889999.h, 16.v))])), prefixConstraints: BoxConstraints(maxHeight: 50.v))), SizedBox(height: 20.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}), SizedBox(height: 19.v)])); } 
/// Section Widget
Widget _buildRadioGroupSelector(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 31.h), child: Row(children: [CustomRadioButton(text: "Laptop", value: radioList[0], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}), Padding(padding: EdgeInsets.only(left: 80.h), child: CustomRadioButton(text: "Computer", value: radioList[1], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}))])); } 
/// Section Widget
Widget _buildBrandName(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomRadioButton(text: "Brand Name", value: "Brand Name", groupValue: radioGroup1, padding: EdgeInsets.fromLTRB(2.h, 15.v, 30.h, 15.v), textStyle: theme.textTheme.bodyMedium, decoration: RadioStyleHelper.outlineBlack, onChange: (value) {radioGroup1 = value;})); } 
/// Section Widget
Widget _buildModelName(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("z", style: CustomTextStyles.bodyLargeLibreBarcode39Extended)), Padding(padding: EdgeInsets.only(left: 6.h, top: 1.v), child: Text("Model Name", style: theme.textTheme.bodyMedium))])); } 
/// Navigates to the laptopVendorDetailsScreen when the action is triggered.
onTapSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.laptopVendorDetailsScreen); } 
 }