import 'controller/app_navigation_controller.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "1ST  PAGE".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.stPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "log in ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "CREATED ACCOUNT".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createdAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit profile page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfilePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "MY Booking".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myBookingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Referal page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.referalPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "PREVIOUS BOOKINGS".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.previousBookingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profilePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change locatoin page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.changeLocatoinPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FORGOT PASSWORD".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Accepted Status".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.acceptedStatusScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Rejected Status".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.rejectedStatusScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Support page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.supportPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "N CAR VENDOR DETAILS".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.nCarVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EV CAR VENDOR DETAILS".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.evCarVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "N BIKE VENDOR DETAILS".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.nBikeVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EV BIKE VENDOR DETAILSe page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.evBikeVendorDetailsePageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LAPTOP VENDOR DETAILS".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.laptopVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "COMPUTER VENDOR DETAILS".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.computerVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "N CAR REQUESTED PAGE".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.nCarRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EV CAR REQUESTED PAGE".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.evCarRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "REQUESTED PAGE  NBIKE".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.requestedPageNbikeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EV BIKE  REQUESTED PAGE".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.evBikeRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "About us".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LAPTOP REQUESTED PAGE".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.laptopRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "COMPUTER REQUESTED PAGE".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.computerRequestedPageScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
