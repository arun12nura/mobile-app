import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LaptopRequestedPageScreen extends StatelessWidget {
 const LaptopRequestedPageScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  return SafeArea(
   child: Scaffold(
    backgroundColor: Color(0xFF3AB793), // Set background color to 3AB793
    body: SingleChildScrollView(
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       SizedBox(height: 20.v),
       Center( // Center widget added here
        child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 20.h),
         child: AppbarSubtitleOne(text: "VENDORS"), // VENDORS element
        ),
       ),
       SizedBox(height: 20.v),
       ..._buildVendorDetails(context),
      ],
     ),
    ),
   ),
  );
 }

 List<Widget> _buildVendorDetails(BuildContext context) {
  List<Widget> vendorWidgets = [];

  List<Map<String, String>> vendorDetails = [
   {"name": "Rahul Krishna", "service": "RYAN Services", "status": "Status"},
   {"name": "John Doe", "service": "ABC Solutions", "status": "Status"},
   {"name": "Jane Smith", "service": "XYZ Enterprises", "status": "Status"},
  ];

  for (var vendor in vendorDetails) {
   vendorWidgets.add(
    Container(
     padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.v),
     margin: EdgeInsets.symmetric(vertical: 10.v),
     decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
     ),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text(
        vendor['name'] ?? "",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), // Removed .sp
       ),
       SizedBox(height: 10.v),
       Text(
        vendor['service'] ?? "",
        style: TextStyle(fontSize: 16, color: Colors.black), // Removed .sp
       ),
       SizedBox(height: 10.v),
       CustomElevatedButton(
        height: 40.v,
        text: vendor['status'] ?? "",
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.bodyLargeLato.copyWith(color: Colors.black),
       ),
      ],
     ),
    ),
   );
  }

  return vendorWidgets;
 }
}
