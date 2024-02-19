import 'package:dosvendor/core/app_export.dart';
import 'package:flutter/material.dart';

class VerificationChangePassScreen extends StatelessWidget {
  const VerificationChangePassScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 19.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowDownBlack90002,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 1.h),
                              onTap: () {
                                onTapImgArrowDown(context);
                              }),
                          SizedBox(height: 1.v),
                          _buildEnlargeScreens(context),
                          SizedBox(height: 96.v),
                          Container(
                              width: 230.h,
                              margin: EdgeInsets.only(left: 39.h),
                              child: Text(
                                  "Verification link has sent \nto your email",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleLarge)),
                          Spacer(),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDone(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 49.h),
                                      child: Text("Done",
                                          style: theme.textTheme.titleLarge))))
                        ])))));
  }

  /// Section Widget
  Widget _buildEnlargeScreens(BuildContext context) {
    return CustomImageView(
        imagePath: ImageConstant.imgEnlargeScreens,
        height: 272.v,
        width: 335.h,
        radius: BorderRadius.vertical(top: Radius.circular(25.h)),
        margin: EdgeInsets.only(left: 1.h));
  }

  /// Navigates to the servicesScreen when the action is triggered.
  onTapImgArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }

  /// Navigates to the servicesScreen when the action is triggered.
  onTapTxtDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }
}
