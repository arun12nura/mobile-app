import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Add this import for SvgPicture
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart'; // Add this import for url_launcher

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
      ),
      onChanged: (value) {
        setState(() {});
      },
    );
  }
}

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 130.v, // Increased height
                    width: 380.h, // Increased width
                  ),
                  SizedBox(height: 20.v),
                  Text("Create account", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 24.v),
                  CustomTextFormField(
                    controller: userNameController,
                    hintText: "Username",
                    textInputType: TextInputType.text,
                    borderDecoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      fillColor: appTheme.whiteA700,
                    ),
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: "Password",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    borderDecoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      fillColor: appTheme.whiteA700,
                    ),
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                    controller: mobileController,
                    hintText: "Mobile",
                    textInputType: TextInputType.phone,
                    borderDecoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      fillColor: appTheme.whiteA700,
                    ),
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 12.v),
                  GestureDetector(
                    onTap: () {
                      createAccount(context);
                    },
                    child: Container(
                      height: 40.v,
                      width: 120.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
                      decoration: AppDecoration.gradientPinkToDeepPurple.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Center(
                        child: Text(
                          "Create",
                          style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v), // Increased space between Create button and "Or create account using Google"
                  GestureDetector(
                    onTap: _launchGoogleSignIn,
                    child: Text(
                      "Or create account using Google",
                      style: theme.textTheme.bodyText2?.copyWith(fontSize: 16), // Increased font size
                    ),
                  ),
                  SizedBox(height: 8.v),
                  GestureDetector(
                    onTap: _launchGoogleSignIn,
                    child: SvgPicture.asset(
                      'assets/images/img_google.svg',
                      height: 40.v, // Increased height
                      width: 40.v, // Increased width
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

  Future<void> createAccount(BuildContext context) async {
    final String username = userNameController.text;
    final String password = passwordController.text;
    final String mobile = mobileController.text;

    // Client-side validation for mobile number length
    if (mobile.length != 10) {
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Mobile number must be 10 digits.'),
        ),
      );
      return; // Stop further execution
    }

    final Map<String, String> data = {
      'username': username,
      'password': password,
      'userMobileNo': mobile,
    };

    final Uri url = Uri.parse('http://52.66.108.179:5000/create_account');

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      // Account created successfully
      Navigator.pushNamed(context, AppRoutes.createdAccountScreen);
    } else {
      // Failed to create account
      // Show error message or handle the failure accordingly
      print('Failed to create account: ${response.body}');
    }
  }

  void _launchGoogleSignIn() async {
    const url = 'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjY7P-lsLOEAxWB-zgGHYrUAGYQFnoECB4QAQ&url=https%3A%2F%2Faccounts.google.com%2Fsignin&usg=AOvVaw37IjAc4ISNLLWBwzDQYEff&opi=89978449'; // Replace with your Google Sign-In URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
