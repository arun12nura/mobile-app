import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/appbar_title.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AcceptedStatusScreen extends StatelessWidget {
  const AcceptedStatusScreen({Key? key}) : super(key: key);

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
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black90002.withOpacity(0.25),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(0, 4))
                    ],
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.teal400,
                          appTheme.teal20068,
                          appTheme.whiteA700.withOpacity(0)
                        ])),
                child: Container(
                    width: 344.h,
                    margin: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 1.v),
                    padding: EdgeInsets.all(7.h),
                    decoration: AppDecoration.outlineBlack900023.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder40),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 3.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle34,
                          height: 196.v,
                          width: 328.h,
                          radius: BorderRadius.circular(40.h)),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 289.v,
                              width: 147.h,
                              margin: EdgeInsets.only(left: 27.h),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: SizedBox(
                                                height: 216.v,
                                                child: VerticalDivider(
                                                    width: 4.h,
                                                    thickness: 4.v,
                                                    indent: 19.h)))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: SizedBox(
                                                height: 90.v,
                                                child: VerticalDivider(
                                                    width: 4.h,
                                                    thickness: 4.v,
                                                    color: appTheme.whiteA700,
                                                    endIndent: 15.h)))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                right: 127.h, bottom: 89.v),
                                            padding: EdgeInsets.all(5.h),
                                            decoration: AppDecoration
                                                .fillBlueGray
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Container(
                                                height: 10.adaptSize,
                                                width: 10.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.teal900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.h))))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 27.h, bottom: 90.v),
                                            child: Text("Processing",
                                                style: CustomTextStyles
                                                    .bodyMediumInterBlack90001))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 26.h, bottom: 2.v),
                                            child: Text("Delivered",
                                                style: CustomTextStyles
                                                    .bodyMediumInterGray90003))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 44.v),
                                            child: Row(children: [
                                              Container(
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blueGray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 7.h),
                                                  child: Text(
                                                      "Out for delivery",
                                                      style: CustomTextStyles
                                                          .bodyMediumInterBlack90001))
                                            ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.h)))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 45.v, right: 45.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    Container(
                                                        padding:
                                                            EdgeInsets.all(5.h),
                                                        decoration: AppDecoration
                                                            .fillBlueGray
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Container(
                                                            height:
                                                                10.adaptSize,
                                                            width: 10.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .teal900,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.h)))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h,
                                                                bottom: 2.v),
                                                        child: Text("Collected",
                                                            style: CustomTextStyles
                                                                .bodyMediumInterBlack90001))
                                                  ]),
                                                  SizedBox(height: 25.v),
                                                  Row(children: [
                                                    Container(
                                                        padding:
                                                            EdgeInsets.all(5.h),
                                                        decoration: AppDecoration
                                                            .fillBlueGray
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Container(
                                                            height:
                                                                10.adaptSize,
                                                            width: 10.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .teal900,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.h)))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h),
                                                        child: Text(
                                                            "Analysising ",
                                                            style: CustomTextStyles
                                                                .bodyMediumInterBlack90001))
                                                  ]),
                                                  SizedBox(height: 25.v),
                                                  Row(children: [
                                                    Container(
                                                        padding:
                                                            EdgeInsets.all(5.h),
                                                        decoration: AppDecoration
                                                            .fillBlueGray
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Container(
                                                            height:
                                                                10.adaptSize,
                                                            width: 10.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .teal900,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.h)))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h),
                                                        child: Text("Accepted",
                                                            style: CustomTextStyles
                                                                .bodyMediumInterGray90003))
                                                  ])
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.all(5.h),
                                                  decoration: AppDecoration
                                                      .fillBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Container(
                                                      height: 10.adaptSize,
                                                      width: 10.adaptSize,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .teal900,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.h)))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 7.h),
                                                  child: Text(
                                                      "Booking Accepted",
                                                      style: CustomTextStyles
                                                          .bodyMediumInterBlack90002))
                                            ]))
                                  ]))),
                      SizedBox(height: 9.v),
                      _buildSwipeToCancel(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 41.v,
        leadingWidth: 25.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 9.h, top: 10.v, bottom: 14.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: AppbarTitle(text: "Status", margin: EdgeInsets.only(left: 9.h)));
  }

  /// Section Widget
  Widget _buildSwipeToCancel(BuildContext context) {
    return SizedBox(
        height: 65.v,
        width: 289.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
                  decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL33),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Container(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(27.h)))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Opacity(
                  opacity: 0.5,
                  child: Padding(
                      padding: EdgeInsets.only(left: 75.h, bottom: 22.v),
                      child: Text("swipe to cancel",
                          style: CustomTextStyles.bodyMediumInterWhiteA70014))))
        ]));
  }

  /// Navigates to the laptopBookingScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.laptopBookingScreen);
  }
}
