import 'package:flutter/material.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_text_form_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

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
                      contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.v),
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
                          SizedBox(width: 8.w), // Adjust the width as needed
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
  onTapThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
