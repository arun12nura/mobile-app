import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:dos/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class CarPageBottomsheet extends StatelessWidget {CarPageBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

List<String> radioList = ["lbl_normal", "lbl_ev"];

TextEditingController nameController = TextEditingController();

TextEditingController issuesController = TextEditingController();

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 18.v), _buildRadioGroupSelector(context), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomTextFormField(controller: nameController, hintText: "Brand Name", prefix: Container(margin: EdgeInsets.fromLTRB(15.h, 14.v, 2.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.v, width: 24.h)), prefixConstraints: BoxConstraints(maxHeight: 50.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL251, fillColor: appTheme.blueGray10068)), SizedBox(height: 11.v), _buildModelNameRow(context), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 8.h), child: CustomTextFormField(controller: issuesController, hintText: "Issues", textInputAction: TextInputAction.done, prefix: Padding(padding: EdgeInsets.fromLTRB(18.h, 16.v, 30.h, 16.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 18.adaptSize, width: 18.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 12.v, width: 10.h, margin: EdgeInsets.fromLTRB(22.h, 16.v, 9.889999.h, 16.v))])), prefixConstraints: BoxConstraints(maxHeight: 50.v))), SizedBox(height: 81.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}), SizedBox(height: 19.v)])); } 
/// Section Widget
Widget _buildRadioGroupSelector(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 32.h, right: 88.h), child: Row(children: [CustomRadioButton(text: "Normal", value: radioList[0], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}), Padding(padding: EdgeInsets.only(left: 78.h), child: CustomRadioButton(text: "Ev", value: radioList[1], groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;}))]))); } 
/// Section Widget
Widget _buildModelNameRow(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("z", style: CustomTextStyles.bodyLargeLibreBarcode39Extended)), Padding(padding: EdgeInsets.only(left: 6.h, top: 1.v), child: Text("Model Name", style: theme.textTheme.bodyMedium))])); } 
/// Navigates to the nCarVendorDetailsScreen when the action is triggered.
onTapSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.nCarVendorDetailsScreen); } 
 }
