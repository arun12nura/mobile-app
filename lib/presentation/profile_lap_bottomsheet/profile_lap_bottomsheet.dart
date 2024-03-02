import 'package:dosvendor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/presentation/laptop_booking_screen/laptop_booking_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileLapBottomsheet extends StatelessWidget {
  const ProfileLapBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.gray50,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.gray50,
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
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 41.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildUserCard(context),
                          SizedBox(height: 57.v),
                          GestureDetector(
                              onTap: () {
                                onTapMyBooking(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Row(children: [
                                    SvgPicture.asset(
                                      'assets/images/img_2_layers.svg', // Replace with your SVG asset path
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      // Add any other SVG properties as needed
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("My services",
                                            style: theme.textTheme.titleSmall))
                                  ]))),
                          SizedBox(height: 22.v),
                          GestureDetector(
                              onTap: () {
                                onTapSettings(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Row(children: [
                                    SvgPicture.asset(
                                      'assets/images/img_settings.svg', // Replace with your SVG asset path
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      // Add any other SVG properties as needed
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("Settings",
                                            style: theme.textTheme.titleSmall))
                                  ]))),
                          SizedBox(height: 23.v),
                          GestureDetector(
                              onTap: () {
                                onTapSupport(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Row(children: [
                                    SvgPicture.asset(
                                      'assets/images/img_help_circle.svg', // Replace with your SVG asset path
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      // Add any other SVG properties as needed
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("Support",
                                            style: theme.textTheme.titleSmall))
                                  ]))),
                          SizedBox(height: 21.v),
                          GestureDetector(
                              onTap: () {
                                onTapAboutUs(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Row(children: [
                                    SvgPicture.asset(
                                      'assets/images/img_users.svg', // Replace with your SVG asset path
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      // Add any other SVG properties as needed
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("About DOS",
                                            style: theme.textTheme.titleSmall))
                                  ]))),
                          SizedBox(height: 21.v),
                          GestureDetector(
                              onTap: () {
                                onTapLogOut(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Row(children: [
                                    SvgPicture.asset(
                                      'assets/images/img_log_out.svg', // Replace with your SVG asset path
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      // Add any other SVG properties as needed
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("Log out",
                                            style: theme.textTheme.titleSmall))
                                  ]))),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: _buildHome(context)));
  }

  /// Section Widget
  Widget _buildUserCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 10.v),
        decoration: AppDecoration.gradientWhiteAToTealBf
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 73.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse4,
                        height: 91.adaptSize,
                        width: 91.adaptSize,
                        radius: BorderRadius.circular(45.h)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 18.h, top: 33.v, bottom: 28.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rahul Krishna",
                                  style: CustomTextStyles
                                      .bodyLargeLatoBluegray900),
                              Opacity(
                                  opacity: 0.43,
                                  child: Text("+91 984275338",
                                      style:
                                          CustomTextStyles.bodySmallBlack90001))
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
                              Text("Airport Rd",
                                  style: CustomTextStyles
                                      .bodyMediumLaoSansProBluegray900),
                              SizedBox(height: 1.v),
                              Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                      "Meenambakam- Chennai- Tamil Nadu",
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
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 98.h, right: 114.h, bottom: 20.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
        child: CustomElevatedButton(
            text: "Home",
            onPressed: () {
              onTapHome(context);
            }));
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapImgEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the myServicesScreen when the action is triggered.
  onTapMyBooking(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myServicesScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the supporrtScreen when the action is triggered.
  onTapSupport(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.supporrtScreen);
  }

  /// Navigates to the aboutDosScreen when the action is triggered.
  onTapAboutUs(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutDosScreen);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapLogOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }

  /// Displays a dialog with the [LaptopServicingDialog] content.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.laptopBookingScreen);
  }
}
