import 'bloc/profile_page_bloc.dart';
import 'models/profile_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilePageBloc>(
        create: (context) => ProfilePageBloc(
            ProfilePageState(profilePageModelObj: ProfilePageModel()))
          ..add(ProfilePageInitialEvent()),
        child: ProfilePageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilePageBloc, ProfilePageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 41.v),
                        _buildUserCard(context),
                        SizedBox(height: 57.v),
                        GestureDetector(
                            onTap: () {
                              onTapMyBooking(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.img2Layers,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtMybookings(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text("lbl_my_bookings".tr,
                                              style:
                                                  theme.textTheme.titleSmall)))
                                ]))),
                        SizedBox(height: 15.v),
                        GestureDetector(
                            onTap: () {
                              onTapInviteFrds(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgSearchBlack9000116x16,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtInvitefriends(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text("lbl_invite_friends".tr,
                                              style:
                                                  theme.textTheme.titleSmall)))
                                ]))),
                        SizedBox(height: 17.v),
                        GestureDetector(
                            onTap: () {
                              onTapSettings(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgSettingsBlack9000116x16,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtSettings(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text("lbl_settings".tr,
                                              style:
                                                  theme.textTheme.titleSmall)))
                                ]))),
                        SizedBox(height: 14.v),
                        GestureDetector(
                            onTap: () {
                              onTapClock(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClock,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtPreviousBooking(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Text("msg_previous_booking".tr,
                                              style:
                                                  theme.textTheme.titleSmall)))
                                ]))),
                        SizedBox(height: 14.v),
                        GestureDetector(
                            onTap: () {
                              onTapLogOut(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 19.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLogOut,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtLogout(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text("lbl_log_out".tr,
                                              style:
                                                  theme.textTheme.titleSmall)))
                                ]))),
                        Spacer(),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 32.v,
                                width: 109.h,
                                margin: EdgeInsets.only(right: 19.h),
                                decoration: BoxDecoration(
                                    color: appTheme.cyan50,
                                    borderRadius: BorderRadius.circular(16.h))))
                      ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildUserCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
        decoration: AppDecoration.gradientWhiteAToTealBf
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(children: [
                    Text("msg_verfied_customer".tr,
                        style: CustomTextStyles.bodyLargeLatoBluegray900),
                    Container(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(left: 3.h),
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgStar,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              radius: BorderRadius.circular(2.h),
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgVectorBlueGray900,
                              height: 4.v,
                              width: 6.h,
                              alignment: Alignment.center)
                        ]))
                  ])),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 73.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse4,
                        height: 91.adaptSize,
                        width: 91.adaptSize,
                        radius: BorderRadius.circular(45.h)),
                    Container(
                        height: 28.v,
                        width: 97.h,
                        margin: EdgeInsets.only(
                            left: 18.h, top: 33.v, bottom: 28.v),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("lbl_rahul_krishna".tr,
                                  style: CustomTextStyles
                                      .bodyLargeLatoBluegray900)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Opacity(
                                  opacity: 0.43,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("lbl_91_984275338".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack90001))))
                        ]))
                  ])),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_airport_rd".tr,
                                  style: CustomTextStyles
                                      .bodyMediumLaoSansProBluegray900),
                              SizedBox(height: 1.v),
                              Opacity(
                                  opacity: 0.5,
                                  child: Text("msg_meenambakam_chennai".tr,
                                      style: CustomTextStyles
                                          .bodySmallBluegray900))
                            ]),
                        CustomImageView(
                            imagePath: ImageConstant.imgEdit,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(top: 10.v, bottom: 2.v),
                            onTap: () {
                              onTapImgEdit(context);
                            })
                      ])),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.h)),
            gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [appTheme.teal400E8, appTheme.teal400E801])),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 16.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomElevatedButton(
                      height: 32.v,
                      width: 109.h,
                      text: "lbl_home".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 11.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgHomeTeal20001,
                              height: 20.v,
                              width: 18.h)),
                      buttonStyle: CustomButtonStyles.fillCyan,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeTeal20001Bold),
                  Container(
                      height: 18.v,
                      width: 16.h,
                      margin:
                          EdgeInsets.only(left: 68.h, top: 6.v, bottom: 8.v),
                      decoration: BoxDecoration(
                          color: appTheme.black90001.withOpacity(0.84),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(4.h)),
                          border: Border.all(
                              color: appTheme.black90001,
                              width: 2.h,
                              strokeAlign: strokeAlignCenter))),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 10.h, top: 2.v, bottom: 4.v),
                      child: Text("lbl_profile".tr,
                          style: CustomTextStyles.titleLargeBold))
                ])));
  }

  /// Navigates to the editProfilePageScreen when the action is triggered.
  onTapImgEdit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.editProfilePageScreen,
    );
  }

  /// Navigates to the myBookingScreen when the action is triggered.
  onTapMyBooking(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myBookingScreen,
    );
  }

  /// Navigates to the myBookingScreen when the action is triggered.
  onTapTxtMybookings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myBookingScreen,
    );
  }

  /// Navigates to the referalPageScreen when the action is triggered.
  onTapInviteFrds(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.referalPageScreen,
    );
  }

  /// Navigates to the referalPageScreen when the action is triggered.
  onTapTxtInvitefriends(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.referalPageScreen,
    );
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsPageScreen,
    );
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapTxtSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsPageScreen,
    );
  }

  /// Navigates to the previousBookingsScreen when the action is triggered.
  onTapClock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.previousBookingsScreen,
    );
  }

  /// Navigates to the previousBookingsScreen when the action is triggered.
  onTapTxtPreviousBooking(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.previousBookingsScreen,
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapLogOut(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtLogout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
