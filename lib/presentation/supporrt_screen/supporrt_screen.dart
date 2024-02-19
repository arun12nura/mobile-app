import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:dosvendor/widgets/custom_elevated_button.dart';
import 'package:dosvendor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/profile_lap_bottomsheet/profile_lap_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class SupporrtScreen extends StatelessWidget {
  SupporrtScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController problemValueEditTextController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 15.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgHelpCircle,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(bottom: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("Support",
                                            style: theme.textTheme.titleSmall))
                                  ]),
                                  SizedBox(height: 99.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 28.h),
                                      child: Text("Contact Us",
                                          style: CustomTextStyles
                                              .headlineLargeInterBlack90002)),
                                  SizedBox(height: 42.v),
                                  _buildNameEditText(context),
                                  SizedBox(height: 39.v),
                                  _buildEmailEditText(context),
                                  SizedBox(height: 31.v),
                                  _buildProblemValueEditText(context),
                                  SizedBox(height: 47.v),
                                  _buildSubmitButton(context),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 28.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(5.h, 5.v, 329.h, 5.v),
            onTap: () {
              onTapArrowDown(context);
            }));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 33.h, right: 43.h),
        child: CustomTextFormField(
            controller: nameEditTextController,
            hintText: "Name",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 6.h, vertical: 11.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack1));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 33.h, right: 43.h),
        child: CustomTextFormField(
            controller: emailEditTextController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack1));
  }

  /// Section Widget
  Widget _buildProblemValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 33.h, right: 43.h),
        child: CustomTextFormField(
            controller: problemValueEditTextController,
            hintText: "Problem",
            textInputAction: TextInputAction.done,
            maxLines: 4,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 6.h, vertical: 11.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack1));
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
        height: 38.v,
        width: 108.h,
        text: "Submit",
        buttonStyle: CustomButtonStyles.fillTeal,
        buttonTextStyle: CustomTextStyles.bodyMediumInterWhiteA700,
        onPressed: () {
          onTapSubmitButton(context);
        },
        alignment: Alignment.center);
  }

  /// Shows a modal bottom sheet with [ProfileLapBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapArrowDown(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileLapBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [ProfileLapBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSubmitButton(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileLapBottomsheet(),
        isScrollControlled: true);
  }
}
