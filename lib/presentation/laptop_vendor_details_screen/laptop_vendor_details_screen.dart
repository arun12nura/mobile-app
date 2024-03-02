import 'dart:convert'; // Add this import to use jsonDecode

import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';

class LaptopVendorDetailsScreen extends StatefulWidget {
 const LaptopVendorDetailsScreen({Key? key}) : super(key: key);

 @override
 _LaptopVendorDetailsScreenState createState() => _LaptopVendorDetailsScreenState();
}

class _LaptopVendorDetailsScreenState extends State<LaptopVendorDetailsScreen> {
 late String vendorName = '';
 late String companyName = '';
 late String userId = ''; // New variable for user ID

 @override
 void initState() {
  super.initState();
  fetchData();
 }

 Future<void> fetchData() async {
  final response = await http.get(Uri.parse('YOUR_API_ENDPOINT_HERE'));

  if (response.statusCode == 200) {
   final data = jsonDecode(response.body); // Use jsonDecode to parse the response body
   setState(() {
    vendorName = data['vendorName'];
    companyName = data['companyName'];
    userId = data['userId']; // Assign user ID
   });
  } else {
   throw Exception('Failed to load data');
  }
 }

 @override
 Widget build(BuildContext context) {
  return SafeArea(
   child: Scaffold(
    extendBody: true,
    extendBodyBehindAppBar: true,
    body: Container(
     width: SizeUtils.width,
     height: SizeUtils.height,
     decoration: BoxDecoration(
      color: appTheme.whiteA700,
      gradient: LinearGradient(
       begin: Alignment(0.5, 0),
       end: Alignment(0.5, 1),
       colors: [
        appTheme.teal400.withOpacity(0.91),
        appTheme.teal20068,
        appTheme.whiteA700.withOpacity(0),
       ],
      ),
     ),
     child: Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v),
      child: Container(
       padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
       decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
       ),
       child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(top: 15.v),
            onTap: () {
             onTapImgArrowDown(context);
            },
           ),
           Padding(
            padding: EdgeInsets.only(left: 100.h, bottom: 11.v),
            child: Text(
             "VENDORS",
             style: CustomTextStyles.bodyLargeLatoWhiteA700,
            ),
           )
          ],
         ),
         SizedBox(height: 5.v), // Decrease gap between the labels
         _buildRequestSection(context),
         SizedBox(height: 20.v), // Decrease gap between the sections
         _buildRequestSection1(context),
         SizedBox(height: 20.v), // Decrease gap between the sections
        ],
       ),
      ),
     ),
    ),
   ),
  );
 }

 Widget _buildRequestSection(BuildContext context) {
  return Padding(
   padding: EdgeInsets.only(right: 5.h),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Text(
      "VENDOR",
      style: CustomTextStyles.bodyLargeLatoBluegray900,
     ),
     SizedBox(height: 2.v),
     Text(
      vendorName,
      style: CustomTextStyles.bodyLargeLatoWhiteA700,
     ),
     SizedBox(height: 5.v),
     Text(
      "USER ID", // Label for user ID
      style: CustomTextStyles.bodyLargeLatoBluegray900,
     ),
     SizedBox(height: 2.v),
     Text(
      userId,
      style: CustomTextStyles.bodyLargeLatoWhiteA700,
     ),
     SizedBox(height: 5.v),
     Text(
      "COMPANY NAME", // Label for company name
      style: CustomTextStyles.bodyLargeLatoBluegray900,
     ),
     SizedBox(height: 2.v),
     Text(
      companyName,
      style: CustomTextStyles.bodyLargeLatoWhiteA700,
     ),
     SizedBox(height: 5.v),
     CustomElevatedButton(
      height: 28.v,
      width: 115.h,
      text: "Request",
      margin: EdgeInsets.only(top: 10.v),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.bodyLargeLato,
      onPressed: () {
       onTapRequest(context);
      },
     ),
    ],
   ),
  );
 }

 Widget _buildRequestSection1(BuildContext context) {
  return Padding(
   padding: EdgeInsets.only(right: 5.h),
   child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Padding(
      padding: EdgeInsets.only(left: 13.h, bottom: 3.v),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Padding(
         padding: EdgeInsets.only(left: 3.h),
         child: Text(
          companyName,
          style: CustomTextStyles.bodyLargeLatoWhiteA700,
         ),
        ),
       ],
      ),
     ),
     Spacer(),
    ],
   ),
  );
 }

 onTapImgArrowDown(BuildContext context) {
  showModalBottomSheet(
   context: context,
   builder: (_) => LaptopPageBottomsheet(), // Use LaptopPageBottomsheet widget
   isScrollControlled: true,
  );
 }

 onTapRequest(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.laptopRequestedPageScreen);
 }
}
