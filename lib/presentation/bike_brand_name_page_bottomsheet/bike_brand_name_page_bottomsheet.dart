import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/bike_page_bottomsheet/bike_page_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class BikeBrandNamePageBottomsheet extends StatelessWidget {BikeBrandNamePageBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

String brandName = "";

List<String> radioList = ["lbl_yamaha", "lbl_honda"];

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.imgRectangle6155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 13.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 32.h, right: 48.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Opacity(opacity: 0.6, child: SizedBox(width: 87.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("Normal", style: theme.textTheme.bodyLarge))]))), _buildRadioButtonSelector(context)]))), SizedBox(height: 16.v), _buildBrandNameSection(context)])); } 
/// Section Widget
Widget _buildRadioButtonSelector(BuildContext context) { return Opacity(opacity: 0.6, child: CustomRadioButton(text: "Ev", value: "Ev", groupValue: radioGroup, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {radioGroup = value;})); } 
/// Section Widget
Widget _buildBrandNameSection(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v), decoration: AppDecoration.outlineBlack900013.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgSettingsBlack90001, height: 20.v, width: 24.h), Padding(padding: EdgeInsets.only(left: 5.h), child: Text("Brand Name", style: theme.textTheme.bodyMedium))]), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 24.h, right: 173.h), child: Column(children: [CustomRadioButton(text: "Yamaha", value: radioList[0], groupValue: brandName, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {brandName = value;}), Padding(padding: EdgeInsets.only(top: 18.v, right: 10.h), child: CustomRadioButton(text: "Honda", value: radioList[1], groupValue: brandName, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyLargeWhiteA700, onChange: (value) {brandName = value;}))])), SizedBox(height: 18.v), Opacity(opacity: 0.6, child: Padding(padding: EdgeInsets.only(left: 27.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgContrastWhiteA700, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h, top: 3.v), child: Text("Big Wing", style: CustomTextStyles.bodyLargeWhiteA700))]))), SizedBox(height: 83.v), CustomElevatedButton(width: 88.h, text: "Submit", onPressed: () {onTapSubmit(context);}, alignment: Alignment.center), SizedBox(height: 3.v)])); } 

/// Shows a modal bottom sheet with [BikePageBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSubmit(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>BikePageBottomsheet(),isScrollControlled: true); } 
 }
