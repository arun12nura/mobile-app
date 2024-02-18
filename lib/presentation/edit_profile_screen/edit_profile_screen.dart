import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/appbar_subtitle.dart';
import 'package:dosvendor/widgets/app_bar/appbar_title_image.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:dosvendor/widgets/custom_elevated_button.dart';
import 'package:dosvendor/widgets/custom_icon_button.dart';
import 'package:dosvendor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/profile_bottomsheet/profile_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.teal400.withOpacity(0.91),
                          appTheme.teal20068,
                          appTheme.whiteA700.withOpacity(0)
                        ])),
                child: Container(
                    height: 585.v,
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: EdgeInsets.only(bottom: 7.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32.h, vertical: 67.v),
                              decoration: AppDecoration.outlineBlack900021
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 64.v),
                                    SizedBox(
                                        height: 62.v,
                                        width: 265.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              _buildEditText1(context),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.h),
                                                      child: Text("Name",
                                                          style: CustomTextStyles
                                                              .titleLargeMedium)))
                                            ])),
                                    SizedBox(height: 15.v),
                                    SizedBox(
                                        height: 63.v,
                                        width: 265.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              _buildEditText2(context),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text("Phone",
                                                      style: CustomTextStyles
                                                          .titleLargeMedium))
                                            ])),
                                    SizedBox(height: 18.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 13.h),
                                            child: Text("Email",
                                                style: CustomTextStyles
                                                    .titleLargeMedium))),
                                    _buildEditText3(context),
                                    SizedBox(height: 72.v),
                                    _buildSaveButton(context)
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgUserImage,
                          height: 104.adaptSize,
                          width: 104.adaptSize,
                          radius: BorderRadius.circular(52.h),
                          alignment: Alignment.topCenter),
                      Padding(
                          padding: EdgeInsets.only(top: 75.v, right: 124.h),
                          child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              alignment: Alignment.topRight,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCamera)))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 55.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90002,
            margin: EdgeInsets.only(left: 12.h, top: 19.v, bottom: 20.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 31.h),
            child: Row(children: [
              AppbarSubtitle(text: "Edit Profile"),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgEdit,
                  margin: EdgeInsets.only(left: 12.h, top: 1.v, bottom: 4.v))
            ])));
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(
        width: 265.h,
        controller: editText1Controller,
        alignment: Alignment.bottomCenter,
        borderDecoration: TextFormFieldStyleHelper.outlineBlack1);
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return CustomTextFormField(
        width: 265.h,
        controller: editText2Controller,
        alignment: Alignment.bottomCenter,
        borderDecoration: TextFormFieldStyleHelper.outlineBlack1);
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h),
        child: CustomTextFormField(
            controller: editText3Controller,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.outlineBlack1));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        width: 115.h,
        text: "Save",
        buttonStyle: CustomButtonStyles.fillWhiteA1,
        buttonTextStyle: CustomTextStyles.titleLargeMedium,
        onPressed: () {
          onTapSaveButton(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Shows a modal bottom sheet with [ProfileBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapArrowDown(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [ProfileBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSaveButton(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileBottomsheet(),
        isScrollControlled: true);
  }
}
