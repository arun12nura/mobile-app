import 'package:flutter/material.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http; // Import the HTTP package
import 'dart:convert';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final bool obscureText;
  final InputDecoration borderDecoration;
  final Color fillColor;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.textInputAction = TextInputAction.done,
    this.prefix,
    this.prefixConstraints,
    this.obscureText = false,
    required this.borderDecoration,
    required this.fillColor,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      obscureText: widget.obscureText,
      decoration: widget.borderDecoration.copyWith(
        hintText: widget.hintText,
        fillColor: widget.fillColor,
        prefixIcon: widget.prefix,
        prefixIconConstraints: widget.prefixConstraints,
        border: OutlineInputBorder(), // Add this line to specify the border
      ),
      onChanged: (value) {
        setState(() {});
      },
    );
  }
}

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  // Define the API endpoint URL
  static const String apiUrl = 'http://52.66.108.179:5000/login';

  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 130.v, // Increased height
                    width: 380.h, // Increased width
                  ),
                  SizedBox(height: 20.v),
                  Text("Hello", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 30.v),
                  Text("Sign in to your account", style: CustomTextStyles.bodyLargeLatoGray90002),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: CustomTextFormField(
                      controller: mobileController,
                      hintText: "Mobile",
                      textInputType: TextInputType.phone,
                      borderDecoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.v),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      fillColor: appTheme.whiteA700,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(18.h, 14.v, 13.h, 14.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLocation,
                          height: 17.v,
                          width: 14.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(maxHeight: 50.v),
                      obscureText: true,
                      borderDecoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.v),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      fillColor: appTheme.whiteA700,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtForgotYourPassword(context);
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 29.h),
                        child: Text("Forgot your password?", style: CustomTextStyles.bodyMediumGray400),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  GestureDetector(
                    onTap: () {
                      onTapSignIn(context);
                    },
                    child: Container(
                      height: 40.v,
                      width: 120.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
                      decoration: AppDecoration.gradientPinkToDeepPurple.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign in",
                            style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
                          ),
                          SizedBox(width: 8.0), // Corrected to use double value
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtCreate(context);
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: CustomTextStyles.bodyMediumGray90002,
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapTxtCreate(context);
                            },
                            child: Text(
                              "Sign up",
                              style: CustomTextStyles.bodyMediumGray90002.copyWith(
                                color: Theme.of(context).primaryColor, // Change the color to your primary color
                                fontWeight: FontWeight.bold, // Make it bold to signify it's tappable
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotYourPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  // Navigates to the signInScreen when the action is triggered.
  onTapTxtCreate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  // Navigates to the homePageScreen when the action is triggered.
  onTapSignIn(BuildContext context) async {
    // Validate the form before attempting to sign in
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Get the user's mobile number and password from the text controllers
    String mobile = mobileController.text;
    String password = passwordController.text;

    // Create a JSON payload with the user's credentials
    var body = jsonEncode({
      'userMobileNo': mobile,
      'password': password,
    });

    // Log the request data
    print('Request Body: $body');

    // Make an HTTP POST request to the login endpoint
    var response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    // Log the response status code
    print('Response Status Code: ${response.statusCode}');

    // Log the response body
    print('Response Body: ${response.body}');

    // Check the response status code
    if (response.statusCode == 200) {
      // If login is successful, navigate to the homePageScreen
      Navigator.pushNamed(context, AppRoutes.homePageScreen);
    } else {
      // If login fails, show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed. Please try again.')),
      );
    }
  }
}
