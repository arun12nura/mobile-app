import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:url_launcher/url_launcher.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController(); // New controller for mobile

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
                    height: 110.v,
                    width: 360.h,
                  ),
                  SizedBox(height: 11.v),
                  Text("Create account", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: CustomTextFormField(
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
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                      fillColor: appTheme.whiteA700,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: CustomTextFormField(
                      controller: mobileController, // Use the new controller for mobile
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
                  ),
                  SizedBox(height: 12.v),
                  _buildSignInRow(context), // Call the _buildSignInRow method
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 23.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 373.v,
                            width: 292.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 156.v),
                                    child: Text(
                                      "Or create account using google",
                                      style: CustomTextStyles.bodyMediumGray90002,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _launchURL(); // Open Google Sign-In URL
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/img_google.svg', // Adjust the path based on your SVG file location
                                    height: 63.v,
                                    width: 61.h,
                                    alignment: Alignment.bottomRight,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector2,
                                  height: 373.v,
                                  width: 111.h,
                                  alignment: Alignment.centerLeft,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h, top: 81.v, bottom: 250.v),
                            child: Column(
                              children: [
                                Text("Create", style: theme.textTheme.labelLarge),
                                SizedBox(height: 7.v),
                                GestureDetector(
                                  onTap: () {
                                    onTapThree(context);
                                  },
                                  child: Container(
                                    height: 17.v,
                                    width: 28.h,
                                    padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 4.v),
                                    decoration: AppDecoration.gradientPinkToDeepPurple.copyWith(
                                      borderRadius: BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ],
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

  onTapThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createdAccountScreen);
  }

  void _launchURL() async {
    const url = 'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjY7P-lsLOEAxWB-zgGHYrUAGYQFnoECB4QAQ&url=https%3A%2F%2Faccounts.google.com%2Fsignin&usg=AOvVaw37IjAc4ISNLLWBwzDQYEff&opi=89978449'; // Replace with your Google Sign-In URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildSignInRow(BuildContext context) {
    // Define the _buildSignInRow method here
    return Container(
      margin: EdgeInsets.only(left: 33.h, right: 27.h),
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.v),
      decoration: AppDecoration.out
