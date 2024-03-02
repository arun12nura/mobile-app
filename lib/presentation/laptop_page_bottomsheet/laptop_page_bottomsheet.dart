import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';


class LaptopPageBottomsheet extends StatefulWidget {
  LaptopPageBottomsheet({Key? key}) : super(key: key);

  @override
  _LaptopPageBottomsheetState createState() => _LaptopPageBottomsheetState();
}

class _LaptopPageBottomsheetState extends State<LaptopPageBottomsheet> {
  String radioGroup = "";
  List<String> radioList = ["Laptop", "PC"];
  TextEditingController warrantyDetailsController = TextEditingController();
  TextEditingController issuesController = TextEditingController();
  TextEditingController brandNameController = TextEditingController();
  TextEditingController modelNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.gradientTealEToTealE.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage155x335,
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
            _buildWarrantyDetails(context),
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
            SizedBox(height: 20.v),
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
      ),
    );
  }

  Widget _buildRadioGroupSelector(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Row(
        children: [
          Expanded(
            child: CustomRadioButton(
              text: "Laptop",
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
          SizedBox(width: 16.h),
          Expanded(
            child: CustomRadioButton(
              text: "PC",
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

  Widget _buildWarrantyDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h, right: 8.h),
      child: TextField(
        controller: warrantyDetailsController,
        decoration: InputDecoration(
          hintText: "Warranty Details",
        ),
        keyboardType: TextInputType.multiline,
        maxLines: null,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  void onTapSubmit(BuildContext context) async {
    String systemType = radioGroup;
    String brandName = brandNameController.text;
    String modelName = modelNameController.text;
    String warrantyDetails = warrantyDetailsController.text;
    String issues = issuesController.text;

    // Retrieve user ID from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? userId = prefs.getInt('user_id');

    if (userId != null) {
      // Constructing the JSON payload
      Map<String, dynamic> requestData = {
        'system_type': systemType,
        'brand_name': brandName,
        'model_name': modelName,
        'warranty_details': warrantyDetails,
        'issues': issues,
        'doslogin_id': userId.toInt(), // Corrected column name
      };

      // Convert the requestData map to JSON
      String requestBody = jsonEncode(requestData);

      // Print the JSON request body for debugging
      print('Request Body: $requestBody');

      // Sending the request to the Flask endpoint
      Uri url = Uri.parse('http://52.66.108.179:5000/laptopservicereq');
      try {
        final response = await http.post(
          url,
          body: requestBody,
          headers: {
            'Content-Type': 'application/json',
          },
        );

        if (response.statusCode == 200) {
          // Request successful
          // Navigate to the desired screen or show a success message
          Navigator.pushNamed(context, AppRoutes.laptopVendorDetailsScreen);
        } else {
          // Request failed
          // Handle the error accordingly
          print('Request failed with status: ${response.statusCode}');
        }
      } catch (e) {
        // Exception occurred
        // Handle the exception accordingly
        print('Exception occurred: $e');
      }
    } else {
      // Handle the case where user ID is not available
      print('User ID not found');
    }
  }
}