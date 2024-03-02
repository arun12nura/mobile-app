import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LaptopRequestedPageScreen extends StatefulWidget {
 const LaptopRequestedPageScreen({Key? key}) : super(key: key);

 @override
 _LaptopRequestedPageScreenState createState() => _LaptopRequestedPageScreenState();
}

class _LaptopRequestedPageScreenState extends State<LaptopRequestedPageScreen> {
 List<bool> showAdditionalDataList = [false, false, false]; // List to track visibility of additional data for each vendor

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
         child: AppbarSubtitleOne(text: "REQUEST STATUS"), // VENDORS element
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
   {"name": "Rahul Krishna", "service": "RYAN Services", "status": "Status", "additionalData": ""},
   {"name": "John Doe", "service": "ABC Solutions", "status": "Status", "additionalData": ""},
   {"name": "Jane Smith", "service": "XYZ Enterprises", "status": "Status", "additionalData": ""},
  ];

  for (int index = 0; index < vendorDetails.length; index++) {
   Map<String, String> vendor = vendorDetails[index];
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
        onPressed: () {
         _handleStatusButtonPressed(index); // Call the function when button is pressed
        },
       ),
       SizedBox(height: 10.v), // Add spacing below the status button
       if (showAdditionalDataList[index])
        TextFormField(
         enabled: false, // Make the field read-only
         decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10.0),
           borderSide: BorderSide(),
          ),
         ),
         onChanged: (value) {
          setState(() {
           vendor['additionalData'] = value; // Update the additionalData value when user inputs data
          });
         },
        ),
      ],
     ),
    ),
   );
  }

  return vendorWidgets;
 }

 void _handleStatusButtonPressed(int index) {
  // Add your logic here for handling status button press
  print("Status button pressed for vendor at index $index");
  setState(() {
   showAdditionalDataList[index] = true; // Show the additional data field after pressing the status button for the corresponding vendor
  });
 }
}
