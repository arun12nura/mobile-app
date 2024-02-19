import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:dosvendor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateAccountBikeScreen extends StatelessWidget {
  CreateAccountBikeScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

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
                    child: Column(children: [
                      _buildAppBar(context),
                      SizedBox(height: 11.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(children: [
                        Text("Create account",
                            style: theme.textTheme.headlineLarge),
                        SizedBox(height: 24.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.h),
                            child: CustomTextFormField(
                                controller: userNameController,
                                hintText: "Username",
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        14.h, 13.v, 3.h, 13.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgLock,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 50.v))),
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
                        SizedBox(height: 12.v),
                        _buildRowFive(context),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                height: 388.v,
                                width: 330.h,
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapEight(context);
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 106.v),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text("create ",
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge),
                                                        Container(
                                                            height: 17.v,
                                                            width: 28.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 5.h),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        9.h,
                                                                    vertical:
                                                                        4.v),
                                                            decoration: AppDecoration
                                                                .gradientPinkToDeepPurple
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder8),
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgArrowLeft,
                                                                height:
                                                                    9.adaptSize,
                                                                width:
                                                                    9.adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center))
                                                      ])))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                              height: 388.v,
                                              width: 292.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 156.v),
                                                            child: Text(
                                                                "Or create account using google ",
                                                                style: CustomTextStyles
                                                                    .bodyMediumGray90002))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGoogle,
                                                        height: 35.adaptSize,
                                                        width: 35.adaptSize,
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        margin: EdgeInsets.only(
                                                            right: 89.h,
                                                            bottom: 163.v)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector2,
                                                        height: 388.v,
                                                        width: 111.h,
                                                        alignment: Alignment
                                                            .centerLeft)
                                                  ])))
                                    ])))
                      ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 11.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup3), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(height: 70.v),
          CustomAppBar(
              height: 18.v,
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowDown,
                  margin: EdgeInsets.only(left: 4.h, right: 330.h),
                  onTap: () {
                    onTapArrowDown(context);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildRowFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 20.v,
              width: 14.h,
              decoration: BoxDecoration(
                  color: appTheme.gray500,
                  borderRadius: BorderRadius.circular(3.h))),
          Padding(
              padding: EdgeInsets.only(left: 13.h, bottom: 2.v),
              child: Text("Mobile", style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Navigates to the logInBikeScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInBikeScreen);
  }

  /// Navigates to the accountCreatedBikeScreen when the action is triggered.
  onTapEight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountCreatedBikeScreen);
  }
}
