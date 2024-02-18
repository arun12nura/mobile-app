import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AccountCreatedTwoScreen extends StatelessWidget {
  const AccountCreatedTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
                appTheme.whiteA700.withOpacity(0),
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 19.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownBlack90002,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 1.h),
                ),
                _buildEnlargeScreens(context),
                SizedBox(height: 87.v),
                SizedBox(
                  width: 216.h,
                  child: Text(
                    "Your account has been \ncreated successfully...",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContinueButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnlargeScreens(BuildContext context) {
    return SizedBox(
      height: 273.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector4,
            height: 257.v,
            width: 329.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEnlargeScreens,
            height: 272.v,
            width: 335.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(25.h),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      width: 180.h,
      text: "Continue",
      margin: EdgeInsets.only(
        left: 90.h,
        right: 90.h,
        bottom: 51.v,
      ),
    );
  }
}
