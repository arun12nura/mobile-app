import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInCarScreen extends StatelessWidget {
  LogInCarScreen({Key? key}) : super(key: key);

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
                        child: Column(children: [
                      _buildLoginForm(context),
                      SizedBox(height: 20.v),
                      Text("Hello", style: theme.textTheme.headlineLarge),
                      SizedBox(height: 30.v),
                      Text("Sign in to your account",
                          style: CustomTextStyles.bodyLargeLatoGray90002),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: CustomTextFormField(
                              controller: mobileController,
                              hintText: "Mobile",
                              textInputType: TextInputType.phone,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 16.v))),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: CustomTextFormField(
                              controller: passwordController,
                              hintText: "Password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      18.h, 14.v, 13.h, 14.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgLocation,
                                      height: 17.v,
                                      width: 14.h)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 50.v),
                              obscureText: true)),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotYourPassword(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(right: 29.h),
                                  child: Text("Forgot  your password?",
                                      style: CustomTextStyles
                                          .bodyMediumGray400)))),
                      SizedBox(height: 27.v),
                      _buildSignInButton(context)
                    ]))))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup3), fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 70.v),
          CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 18.v,
              width: 26.h,
              onTap: () {
                onTapImgArrowDown(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 305.v,
            width: 330.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
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
                                    child: Text("Sign in",
                                        style: theme.textTheme.labelLarge)),
                                Container(
                                    height: 17.v,
                                    width: 28.h,
                                    margin: EdgeInsets.only(left: 3.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 9.h, vertical: 4.v),
                                    decoration: AppDecoration
                                        .gradientPinkToDeepPurple
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowLeft,
                                        height: 9.adaptSize,
                                        width: 9.adaptSize,
                                        alignment: Alignment.center))
                              ])))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      height: 305.v,
                      width: 277.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtDonthaveanaccount(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(top: 131.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Don’t have an account? ",
                                              style: CustomTextStyles
                                                  .bodyMediumff262626),
                                          TextSpan(
                                              text: "Create",
                                              style: CustomTextStyles
                                                  .bodyMediumff262626
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))
                                        ]),
                                        textAlign: TextAlign.left)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgVector2,
                            height: 305.v,
                            width: 132.h,
                            alignment: Alignment.centerLeft)
                      ])))
            ])));
  }

  /// Navigates to the servicesScreen when the action is triggered.
  onTapImgArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }

  /// Navigates to the verificationChangePassScreen when the action is triggered.
  onTapTxtForgotYourPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verificationChangePassScreen);
  }

  /// Navigates to the carBookingScreen when the action is triggered.
  onTapSeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carBookingScreen);
  }

  /// Navigates to the createAccountCarScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountCarScreen);
  }
}
