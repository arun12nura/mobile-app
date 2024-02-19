import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/custom_elevated_button.dart';
import 'package:dosvendor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordDialog extends StatelessWidget {
  ChangePasswordDialog({Key? key}) : super(key: key);

  TextEditingController currentPasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();

  TextEditingController reTypeNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 337.h,
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 49.v),
        decoration: AppDecoration.fillTeal400
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("Current Password:",
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 9.v),
              _buildCurrentPassword(context),
              SizedBox(height: 8.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Opacity(
                      opacity: 0.3,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtFORGOTYOURPASSWORD(context);
                          },
                          child: Container(
                              width: 133.h,
                              margin: EdgeInsets.only(right: 17.h),
                              child: Text("FORGOT  YOUR PASSWORD",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.labelSmall))))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("New Password:",
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 16.v),
              _buildNewPassword(context),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("Re type  New Password :",
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 6.v),
              _buildReTypeNewPassword(context),
              SizedBox(height: 55.v),
              _buildConfirm(context)
            ]));
  }

  /// Section Widget
  Widget _buildCurrentPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 17.h),
        child: CustomTextFormField(
            controller: currentPasswordController,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24,
            fillColor: appTheme.whiteA700.withOpacity(0.77)));
  }

  /// Section Widget
  Widget _buildNewPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 17.h),
        child: CustomTextFormField(
            controller: newPasswordController,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24,
            fillColor: appTheme.whiteA700.withOpacity(0.77)));
  }

  /// Section Widget
  Widget _buildReTypeNewPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 17.h),
        child: CustomTextFormField(
            controller: reTypeNewPasswordController,
            textInputAction: TextInputAction.done,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24,
            fillColor: appTheme.whiteA700.withOpacity(0.77)));
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
        height: 58.v,
        width: 192.h,
        text: "Confirm",
        margin: EdgeInsets.only(left: 56.h),
        buttonStyle: CustomButtonStyles.fillWhiteATL29,
        buttonTextStyle: CustomTextStyles.headlineLargeInterTeal400,
        onPressed: () {
          onTapConfirm(context);
        });
  }

  /// Navigates to the verificationChangePassScreen when the action is triggered.
  onTapTxtFORGOTYOURPASSWORD(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verificationChangePassScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
