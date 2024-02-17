import 'bloc/accepted_status_bloc.dart';
import 'models/accepted_status_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AcceptedStatusScreen extends StatelessWidget {
  const AcceptedStatusScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AcceptedStatusBloc>(
        create: (context) => AcceptedStatusBloc(
            AcceptedStatusState(acceptedStatusModelObj: AcceptedStatusModel()))
          ..add(AcceptedStatusInitialEvent()),
        child: AcceptedStatusScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AcceptedStatusBloc, AcceptedStatusState>(
        builder: (context, state) {
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
                            color: appTheme.black90001.withOpacity(0.25),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 1.v),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildStatus(context),
                            SizedBox(height: 12.v),
                            Container(
                                margin: EdgeInsets.only(left: 2.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.h, vertical: 9.v),
                                decoration: AppDecoration.outlineBlack900014
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder40),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle34,
                                          height: 196.v,
                                          width: 328.h,
                                          radius: BorderRadius.circular(40.h)),
                                      SizedBox(height: 21.v),
                                      Container(
                                          height: 216.v,
                                          width: 147.h,
                                          margin: EdgeInsets.only(left: 27.h),
                                          child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: SizedBox(
                                                            height: 197.v,
                                                            child:
                                                                VerticalDivider(
                                                                    width: 4.h,
                                                                    thickness:
                                                                        4.v)))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 45.h,
                                                                bottom: 16.v),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(children: [
                                                                Container(
                                                                    padding: EdgeInsets
                                                                        .all(5
                                                                            .h),
                                                                    decoration: AppDecoration
                                                                        .fillBlueGray
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                    child: Container(
                                                                        height: 10
                                                                            .adaptSize,
                                                                        width: 10
                                                                            .adaptSize,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.teal900,
                                                                            borderRadius: BorderRadius.circular(5.h)))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            7.h,
                                                                        bottom: 2
                                                                            .v),
                                                                    child: Text(
                                                                        "lbl_collected"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumInterBlack900))
                                                              ]),
                                                              SizedBox(
                                                                  height: 25.v),
                                                              Row(children: [
                                                                Container(
                                                                    padding: EdgeInsets
                                                                        .all(5
                                                                            .h),
                                                                    decoration: AppDecoration
                                                                        .fillBlueGray
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                    child: Container(
                                                                        height: 10
                                                                            .adaptSize,
                                                                        width: 10
                                                                            .adaptSize,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.teal900,
                                                                            borderRadius: BorderRadius.circular(5.h)))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 7
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl_analysising"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumInterBlack900))
                                                              ]),
                                                              SizedBox(
                                                                  height: 25.v),
                                                              Row(children: [
                                                                Container(
                                                                    padding: EdgeInsets
                                                                        .all(5
                                                                            .h),
                                                                    decoration: AppDecoration
                                                                        .fillBlueGray
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                    child: Container(
                                                                        height: 10
                                                                            .adaptSize,
                                                                        width: 10
                                                                            .adaptSize,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.teal900,
                                                                            borderRadius: BorderRadius.circular(5.h)))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 7
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl_accepted"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumInterGray90003))
                                                              ]),
                                                              SizedBox(
                                                                  height: 25.v),
                                                              Row(children: [
                                                                Container(
                                                                    padding: EdgeInsets
                                                                        .all(5
                                                                            .h),
                                                                    decoration: AppDecoration
                                                                        .fillBlueGray
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                    child: Container(
                                                                        height: 10
                                                                            .adaptSize,
                                                                        width: 10
                                                                            .adaptSize,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.teal900,
                                                                            borderRadius: BorderRadius.circular(5.h)))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 7
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl_processing"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumInterBlack900))
                                                              ])
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                              padding:
                                                                  EdgeInsets.all(
                                                                      5.h),
                                                              decoration: AppDecoration
                                                                  .fillBlueGray
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder8),
                                                              child: Container(
                                                                  height: 10
                                                                      .adaptSize,
                                                                  width: 10
                                                                      .adaptSize,
                                                                  decoration: BoxDecoration(
                                                                      color: appTheme
                                                                          .teal900,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.h)))),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          7.h),
                                                              child: Text(
                                                                  "msg_booking_accepted"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumInter))
                                                        ]))
                                              ])),
                                      SizedBox(height: 17.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 27.h),
                                          child: Row(children: [
                                            SizedBox(
                                                height: 73.v,
                                                width: 20.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height: 58.v,
                                                              child: VerticalDivider(
                                                                  width: 4.h,
                                                                  thickness:
                                                                      4.v,
                                                                  color: appTheme
                                                                      .whiteA700))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 9.v),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .blueGray100,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.h)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  20.adaptSize,
                                                              width:
                                                                  20.adaptSize,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .blueGray100,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.h))))
                                                    ])),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 6.h,
                                                    top: 10.v,
                                                    bottom: 2.v),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 1.h),
                                                          child: Text(
                                                              "msg_out_for_delivery"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumInterBlack900)),
                                                      SizedBox(height: 25.v),
                                                      Text("lbl_delivered".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumInterGray90003)
                                                    ]))
                                          ]))
                                    ])),
                            SizedBox(height: 4.v)
                          ])))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90001,
            margin: EdgeInsets.fromLTRB(9.h, 14.v, 335.h, 14.v),
            onTap: () {
              onTapArrowDown(context);
            }));
  }

  /// Section Widget
  Widget _buildStatus(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
              child: Text("lbl_status".tr,
                  style: CustomTextStyles.titleLargeMedium22)),
          CustomImageView(
              imagePath: ImageConstant.imgPlay,
              height: 37.adaptSize,
              width: 37.adaptSize)
        ]));
  }

  /// Navigates to the myBookingScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myBookingScreen,
    );
  }
}
