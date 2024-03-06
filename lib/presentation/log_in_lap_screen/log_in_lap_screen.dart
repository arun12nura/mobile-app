import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInLapScreen extends StatelessWidget {
  LogInLapScreen({Key? key}) : super(key: key);

  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              // Unfocus text fields when tapping outside
              FocusScope.of(context).unfocus();
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildThreeColumn(context),
                  SizedBox(height: 20.v),
                  Text("Hello", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 30.v),
                  Text("Sign in to your account", style: CustomTextStyles.bodyLargeLatoGray90002),
                  SizedBox(height: 24.v),
                  CustomTextFormField(
                    controller: mobileController,
                    hintText: "Mobile",
                    textInputType: TextInputType.phone,
                    contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.v),
                    onTap: () {
                      // Unfocus Password field when Mobile field is tapped
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
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
                    autofocus: false, // Set autofocus to false for Mobile field
                  ),
                  SizedBox(height: 28.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        onTapTxtForgotYourPassword(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 29.h),
                        child: Text(
                          "Forgot your password?",
                          style: CustomTextStyles.bodyMediumGray400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  _buildSignInStack(context),
                  SizedBox(height: 100.v), // Add space to prevent bottom overflow when keyboard is opened
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildThreeColumn(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.imgGroup3),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70.v),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 18.v,
            width: 26.h,
            onTap: () {
              onTapImgArrowDown(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSignInStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 305.v,
        width: 330.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  onTapSeven(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "Sign in",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Container(
                        height: 17.v,
                        width: 28.h,
                        margin: EdgeInsets.only(left: 3.h),
                        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 4.v),
                        decoration: AppDecoration.gradientPinkToDeepPurple.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: SvgPicture.asset(
                          'assets/images/img_arrow_left.svg',
                          height: 9.adaptSize,
                          width: 9.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 305.v,
                width: 277.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          onTapTxtDonthaveanaccount(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 131.v),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don’t have an account? ",
                                  style: CustomTextStyles.bodyMediumff262626,
                                ),
                                TextSpan(
                                  text: "Create",
                                  style: CustomTextStyles.bodyMediumff262626.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector2,
                      height: 305.v,
                      width: 132.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTapImgArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }

  void onTapTxtForgotYourPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verificationChangePassScreen);
  }

  void onTapSeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.laptopBookingScreen);
  }

  void onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountLapScreen);
  }
}
