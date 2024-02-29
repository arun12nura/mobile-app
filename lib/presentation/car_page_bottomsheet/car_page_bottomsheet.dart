import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class CarPageBottomsheet extends StatefulWidget {
 CarPageBottomsheet({Key? key}) : super(key: key);

 @override
 _CarPageBottomsheetState createState() => _CarPageBottomsheetState();
}

class _CarPageBottomsheetState extends State<CarPageBottomsheet> {
 String radioGroup = "";
 List<String> radioList = ["Normal", "Ev"];
 TextEditingController nameController = TextEditingController();
 TextEditingController issuesController = TextEditingController();
 TextEditingController modelNameController = TextEditingController();

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
      imagePath: ImageConstant.imgRectangle4155x335,
      height: 155.v,
      width: 335.h,
      radius: BorderRadius.vertical(top: Radius.circular(32.h)),
     ),
     SizedBox(height: 18.v),
     _buildRadioGroupSelector(context),
     SizedBox(height: 18.v),
     Padding(
      padding: EdgeInsets.only(left: 9.h, right: 8.h),
      child: TextField(
       controller: nameController,
       decoration: InputDecoration(
        hintText: "Brand Name",
       ),
       style: TextStyle(color: Colors.black),
      ),
     ),
     SizedBox(height: 11.v),
     Padding(
      padding: EdgeInsets.only(left: 9.h, right: 8.h),
      child: TextField(
       controller: modelNameController,
       decoration: InputDecoration(
        hintText: "Model Name",
       ),
       style: TextStyle(color: Colors.black),
      ),
     ),
     SizedBox(height: 11.v),
     Padding(
      padding: EdgeInsets.only(left: 9.h, right: 8.h),
      child: TextField(
       controller: issuesController,
       decoration: InputDecoration(
        hintText: "Issues",
       ),
       keyboardType: TextInputType.multiline,
       maxLines: null,
      ),
     ),
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
  return Align(
   alignment: Alignment.centerLeft,
   child: Padding(
    padding: EdgeInsets.only(left: 32.h, right: 88.h),
    child: Row(
     children: [
      Expanded(
       child: CustomRadioButton(
        text: "Normal",
        value: radioList[0],
        groupValue: radioGroup,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
         setState(() {
          radioGroup = value!;
         });
        },
       ),
      ),
      SizedBox(width: 10.h),
      Expanded(
       child: CustomRadioButton(
        text: "Ev",
        value: radioList[1],
        groupValue: radioGroup,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
         setState(() {
          radioGroup = value!;
         });
        },
       ),
      ),
     ],
    ),
   ),
  );
 }

 onTapSubmit(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.nCarVendorDetailsScreen);
 }
}
