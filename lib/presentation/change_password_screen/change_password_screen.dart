import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
                appTheme.whiteA700.withOpacity(0),
              ],
            ),
          ),
          child: Container(
            height: 459.v,
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 55.h,
              right: 55.h,
              bottom: 84.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1539,
                  height: 170.adaptSize,
                  width: 170.adaptSize,
                  radius: BorderRadius.circular(
                    40.h,
                  ),
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 33.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup875,
                  height: 239.v,
                  width: 249.h,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildViewThree(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Container(
        height: 22.adaptSize,
        width: 22.adaptSize,
        margin: EdgeInsets.fromLTRB(20.h, 16.v, 318.h, 18.v),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorStroke,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorStroke,
              height: 22.adaptSize,
              width: 22.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewThree(BuildContext context) {
    return Container(
      height: 107.v,
      width: 228.h,
      margin: EdgeInsets.only(
        left: 66.h,
        right: 66.h,
        bottom: 8.v,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 60.v,
              width: 228.h,
              decoration: BoxDecoration(
                color: appTheme.green500,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 44.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 26.v,
                    width: 22.h,
                    margin: EdgeInsets.only(bottom: 63.v),
                  ),
                  Container(
                    width: 99.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Text(
                      " Scan QR \n\n Code",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
