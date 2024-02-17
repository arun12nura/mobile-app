import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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
                  _buildSignInRow(context),
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
                                CustomImageView(
                                  imagePath: ImageConstant.imgGoogle,
                                  height: 63.v,
                                  width: 61.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(right: 64.h, bottom: 124.v),
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

  Widget _buildSignInRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 33.h, right: 27.h),
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.v),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 20.v,
            width: 14.h,
            decoration: BoxDecoration(
              color: appTheme.gray500,
              borderRadius: BorderRadius.circular(3.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h, bottom: 2.v),
            child: Text("Mobile", style: CustomTextStyles.bodyMediumGray40001),
          ),
        ],
      ),
    );
  }

  onTapThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createdAccountScreen);
  }
}
