import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AccountCreatedLapScreen extends StatelessWidget {
  const AccountCreatedLapScreen({Key? key}) : super(key: key);

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
                          appTheme.whiteA700.withOpacity(0)
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 19.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowDownBlack90002,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 1.h)),
                          _buildEnlargeScreens(context),
                          Spacer(),
                          Container(
                              width: 216.h,
                              margin: EdgeInsets.only(left: 47.h),
                              child: Text(
                                  "Your account has been \ncreated successfully...",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleLarge)),
                          SizedBox(height: 57.v),
                          CustomElevatedButton(
                              width: 180.h,
                              text: "Continue",
                              onPressed: () {
                                onTapContinue(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 43.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildEnlargeScreens(BuildContext context) {
    return Container(
        height: 273.v,
        width: 335.h,
        margin: EdgeInsets.only(left: 1.h),
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector4,
              height: 257.v,
              width: 329.h,
              alignment: Alignment.topCenter),
          CustomImageView(
              imagePath: ImageConstant.imgEnlargeScreens,
              height: 272.v,
              width: 335.h,
              radius: BorderRadius.vertical(top: Radius.circular(25.h)),
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the logInLapScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInLapScreen);
  }
}
