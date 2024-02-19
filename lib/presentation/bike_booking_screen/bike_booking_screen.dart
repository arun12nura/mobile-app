import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_title.dart';
import 'package:dosvendor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/profile_bike_bottomsheet/profile_bike_bottomsheet.dart';

class BikeBookingScreen extends StatelessWidget {
  const BikeBookingScreen({Key? key}) : super(key: key);

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
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 9.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 24.v),
                      _buildIssues(context),
                      Spacer()
                    ]))),
            bottomNavigationBar: _buildMyServices(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "My Services", margin: EdgeInsets.only(left: 20.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPlay,
              margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 9.v))
        ]);
  }

  /// Section Widget
  Widget _buildIssues(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 9.v),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(right: 52.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle331,
                            height: 110.adaptSize,
                            width: 110.adaptSize,
                            radius: BorderRadius.circular(16.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 11.v, bottom: 35.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: 12.v,
                                        width: 18.h,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text("Royal enfield",
                                            style: theme.textTheme.bodySmall))
                                  ]),
                                  SizedBox(height: 8.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Row(children: [
                                        Text("z",
                                            style: CustomTextStyles
                                                .bodyMediumLibreBarcode39ExtendedBlack90002),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text("Classic 350",
                                                style:
                                                    theme.textTheme.bodySmall))
                                      ])),
                                  SizedBox(height: 10.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgBug,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 2.v)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 12.h),
                                            child: Text("Starting Trouble ",
                                                style:
                                                    theme.textTheme.bodySmall))
                                      ]))
                                ]))
                      ])),
              SizedBox(height: 17.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 19.v,
                                width: 97.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: 18.v,
                                              width: 97.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 14.h,
                                                  vertical: 3.v),
                                              decoration: AppDecoration.fillTeal
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCheckmark,
                                                  height: 11.v,
                                                  width: 16.h,
                                                  alignment:
                                                      Alignment.bottomLeft))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtAccept(context);
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 7.h),
                                                  child: Text("Accept",
                                                      style: CustomTextStyles
                                                          .bodyMediumGray600))))
                                    ])),
                            SizedBox(
                                height: 19.v,
                                width: 97.h,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: 18.v,
                                              width: 97.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.teal100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9.h)))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 22.h),
                                              child: Text("Reject",
                                                  style: CustomTextStyles
                                                      .bodyMediumGray600)))
                                    ]))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildMyServices(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 114.h, right: 129.h, bottom: 21.v),
        decoration: AppDecoration.gradientTealEToTealE,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.gray100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Container(
                height: 32.v,
                width: 117.h,
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h, bottom: 1.v),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 18.v,
                                    width: 16.h,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 6.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.black90002
                                            .withOpacity(0.84),
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(4.h)),
                                        border: Border.all(
                                            color: appTheme.black90002,
                                            width: 2.h,
                                            strokeAlign: strokeAlignCenter))),
                                Padding(
                                    padding: EdgeInsets.only(left: 11.h),
                                    child: Text("Profile",
                                        style: theme.textTheme.titleLarge))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapProfile(context);
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: 18.v,
                                        width: 16.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 6.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.black90002
                                                .withOpacity(0.84),
                                            borderRadius: BorderRadius.vertical(
                                                bottom: Radius.circular(4.h)),
                                            border: Border.all(
                                                color: appTheme.black90002,
                                                width: 2.h,
                                                strokeAlign:
                                                    strokeAlignCenter))),
                                    Padding(
                                        padding: EdgeInsets.only(top: 5.v),
                                        child: Text("Profile",
                                            style: theme.textTheme.titleLarge))
                                  ]))))
                ]))));
  }

  /// Navigates to the acceptedStatusBikeScreen when the action is triggered.
  onTapTxtAccept(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.acceptedStatusBikeScreen);
  }

  /// Shows a modal bottom sheet with [ProfileBikeBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapProfile(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileBikeBottomsheet(),
        isScrollControlled: true);
  }
}
