import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(14.h, 13.v, 3.h, 13.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(maxHeight: 50.v),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
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
                    borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 10.v),
                  CustomTextFormField(
                    controller: mobileController,
                    hintText: "Mobile",
                    textInputType: TextInputType.phone,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(18.h, 14.v, 13.h, 14.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 17.v,
                        width: 14.h,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(maxHeight: 50.v),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 12.v),
                  GestureDetector(
                    onTap: () {
                      onTapThree(context);
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

  onTapThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createdAccountScreen);
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
