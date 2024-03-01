import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart'; // Assuming CustomRadioButton is defined in this file
import 'package:flutter/material.dart';

class BikePageBottomsheet extends StatefulWidget {
 BikePageBottomsheet({Key? key}) : super(key: key);

 @override
 _BikePageBottomsheetState createState() => _BikePageBottomsheetState();
}

class _BikePageBottomsheetState extends State<BikePageBottomsheet> {
 String? radioGroup;
 TextEditingController brandNameController = TextEditingController();
 TextEditingController modelNameController = TextEditingController();
 TextEditingController issuesController = TextEditingController();

 @override
 Widget build(BuildContext context) {
  return Container(
   width: double.maxFinite,
   padding: EdgeInsets.all(12.h),
   decoration: AppDecoration.gradientTealEToTealE.copyWith(
    borderRadius: BorderRadiusStyle.customBorderTL32,
   ),
   child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
     CustomImageView(
      imagePath: ImageConstant.imgRectangle6155x335,
      height: 155.v,
      width: 335.h,
      radius: BorderRadius.vertical(top: Radius.circular(32.h)),
     ),
     SizedBox(height: 20.v),
     _buildRadioGroupSelector(context),
     SizedBox(height: 16.v),
     _buildBrandName(context),
     SizedBox(height: 11.v),
     _buildModelName(context),
     SizedBox(height: 11.v),
     _buildIssues(context),
     SizedBox(height: 81.v),
     CustomElevatedButton(
      width: 88.h,
      text: "Submit",
      onPressed: () {
       onTapSubmit(context);
      },
     ),
     SizedBox(height: 19.v),
    ],
   ),
  );
 }

 Widget _buildRadioGroupSelector(BuildContext context) {
  return Padding(
   padding: EdgeInsets.symmetric(horizontal: 31.h),
   child: Row( // Change Column to Row here
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Expanded(
      child: CustomRadioButton(
       text: "BNormal",
       value: "Normal",
       groupValue: radioGroup,
       padding: EdgeInsets.symmetric(vertical: 1.v),
       onChange: (value) {
        setState(() {
         radioGroup = value;
        });
       },
      ),
     ),
     SizedBox(width: 20.h), // Add some spacing between the radio buttons
     Expanded(
      child: CustomRadioButton(
       text: "BEv",
       value: "Ev",
       groupValue: radioGroup,
       padding: EdgeInsets.symmetric(vertical: 1.v),
       onChange: (value) {
        setState(() {
         radioGroup = value;
        });
       },
      ),
     ),
    ],
   ),
  );
 }

 Widget _buildBrandName(BuildContext context) {
  return Padding(
   padding: EdgeInsets.only(left: 9.h, right: 8.h),
   child: TextField(
    controller: brandNameController,
    decoration: InputDecoration(
     hintText: "Brand Name",
    ),
    style: TextStyle(color: Colors.black),
   ),
  );
 }

 Widget _buildModelName(BuildContext context) {
  return Padding(
   padding: EdgeInsets.only(left: 9.h, right: 8.h),
   child: TextField(
    controller: modelNameController,
    decoration: InputDecoration(
     hintText: "Model Name",
    ),
    style: TextStyle(color: Colors.black),
   ),
  );
 }

 Widget _buildIssues(BuildContext context) {
  return Padding(
   padding: EdgeInsets.only(left: 9.h, right: 8.h),
   child: TextField(
    controller: issuesController,
    decoration: InputDecoration(
     hintText: "Issues",
    ),
    keyboardType: TextInputType.multiline,
    maxLines: null,
    style: TextStyle(color: Colors.black),
   ),
  );
 }

 onTapSubmit(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.nBikeVendorDetailsScreen);
 }
}
