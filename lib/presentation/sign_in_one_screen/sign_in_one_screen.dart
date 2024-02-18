import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInOneScreen extends StatelessWidget {
  SignInOneScreen({Key? key}) : super(key: key);

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
                    child: SingleChildScrollView(
                        child: Column(children: [
                      _buildArrowDownSection(context),
                      SizedBox(height: 11.v),
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
                      _buildFiveSection(context),
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
                                                padding:
                                                    EdgeInsets.only(top: 106.v),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("create ",
                                                          style: theme.textTheme
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
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          right: 89.h,
                                                          bottom: 163.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVector2,
                                                      height: 388.v,
                                                      width: 111.h,
                                                      alignment:
                                                          Alignment.centerLeft)
                                                ])))
                                  ])))
                    ]))))));
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup214),
                fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 76.v),
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
  Widget _buildFiveSection(BuildContext context) {
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

  /// Navigates to the logInThreeScreen when the action is triggered.
  onTapImgArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInThreeScreen);
  }

  /// Navigates to the accountCreatedOneScreen when the action is triggered.
  onTapEight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountCreatedOneScreen);
  }
}
