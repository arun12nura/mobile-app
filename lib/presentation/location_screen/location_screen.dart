import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:dosvendor/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18.v),
                          decoration: AppDecoration.gradientTealToWhiteA7001,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(context),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 20.h, right: 26.h),
                                child: CustomSearchView(
                                    controller: searchController,
                                    hintText: "Try kavin nager")),
                            SizedBox(height: 10.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgSave,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 6.h, top: 2.v, bottom: 3.v),
                                          child: Text("Use my current location",
                                              style: CustomTextStyles
                                                  .bodyLargeBlack90002_1))
                                    ]))),
                            SizedBox(height: 10.v)
                          ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(top: 164.v),
                          child: Text(
                              "---------------------------------------------------",
                              style: CustomTextStyles.bodyLargeBlack90002_1))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 20.h, right: 20.h, bottom: 24.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 18.v),
                          decoration: AppDecoration.outlineBlack900021.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("SAVED ADDRESSES",
                                    style:
                                        CustomTextStyles.bodyLargeBlack90002_1),
                                SizedBox(height: 30.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.h, right: 3.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgHome,
                                                  height: 20.v,
                                                  width: 18.h,
                                                  margin: EdgeInsets.only(
                                                      top: 8.v, bottom: 7.v)),
                                              Container(
                                                  height: 36.v,
                                                  width: 251.h,
                                                  margin: EdgeInsets.only(
                                                      left: 11.h),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                                "Home. 5 km",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Text(
                                                                "2/2 kkm home back side,avinashi",
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge))
                                                      ]))
                                            ]))),
                                SizedBox(height: 24.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, right: 66.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgLockBlack90002,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 8.v, bottom: 7.v)),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 7.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Office ",
                                                        style: theme.textTheme
                                                            .bodyLarge),
                                                    Text(
                                                        "4/5 open hall,coimbatore",
                                                        style: theme.textTheme
                                                            .bodyLarge)
                                                  ])))
                                    ])),
                                SizedBox(height: 24.v)
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 20.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90002,
            margin: EdgeInsets.only(left: 12.h, bottom: 3.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Enter your area or apartment name"));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
