import 'package:dosvendor/core/app_export.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildArrowDownStack(context),
                      SizedBox(height: 24.v),
                      SizedBox(
                          height: 599.v,
                          width: 299.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVector2,
                                height: 305.v,
                                width: 132.h,
                                alignment: Alignment.bottomLeft),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 68.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                              height: 144.v,
                                              width: 221.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage,
                                                        height: 103.v,
                                                        width: 221.h,
                                                        radius: BorderRadius
                                                            .vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        32.h)),
                                                        alignment:
                                                            Alignment.topCenter,
                                                        onTap: () {
                                                          onTapImgImage(
                                                              context);
                                                        }),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text("Laptops ",
                                                            style: CustomTextStyles
                                                                .titleLargeInknutAntiqua))
                                                  ])),
                                          SizedBox(height: 21.v),
                                          SizedBox(
                                              height: 142.v,
                                              width: 225.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text("Cars",
                                                            style: CustomTextStyles
                                                                .titleLargeInknutAntiqua)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle4104x225,
                                                        height: 104.v,
                                                        width: 225.h,
                                                        radius: BorderRadius
                                                            .vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        32.h)),
                                                        alignment:
                                                            Alignment.topCenter,
                                                        onTap: () {
                                                          onTapImgImage1(
                                                              context);
                                                        })
                                                  ])),
                                          SizedBox(height: 16.v),
                                          SizedBox(
                                              height: 139.v,
                                              width: 229.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 78.h),
                                                            child: Text("Bikes",
                                                                style: CustomTextStyles
                                                                    .titleLargeInknutAntiqua))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle9,
                                                        height: 106.v,
                                                        width: 229.h,
                                                        radius: BorderRadius
                                                            .vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        32.h)),
                                                        alignment:
                                                            Alignment.topCenter,
                                                        onTap: () {
                                                          onTapImgImage2(
                                                              context);
                                                        })
                                                  ]))
                                        ])))
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildArrowDownStack(BuildContext context) {
    return SizedBox(
        height: 102.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup3),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 70.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 18.v,
                            width: 26.h)
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 81.h),
                  child: Text("Services", style: theme.textTheme.displaySmall)))
        ]));
  }

  /// Navigates to the logInLapScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInLapScreen);
  }

  /// Navigates to the logInCarScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInCarScreen);
  }

  /// Navigates to the logInBikeScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInBikeScreen);
  }
}
