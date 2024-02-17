import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
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
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "1ST  PAGE",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.stPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "log in ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CREATED ACCOUNT",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createdAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit profile page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfilePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MY Booking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myBookingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Referal page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PREVIOUS BOOKINGS",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.previousBookingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profilePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change locatoin page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changeLocatoinPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FORGOT PASSWORD",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Accepted Status",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.acceptedStatusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Rejected Status",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.rejectedStatusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Support page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.supportPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "N CAR VENDOR DETAILS",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.nCarVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "EV CAR VENDOR DETAILS",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.evCarVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "N BIKE VENDOR DETAILS",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.nBikeVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "EV BIKE VENDOR DETAILSe page",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.evBikeVendorDetailsePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LAPTOP VENDOR DETAILS",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.laptopVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "COMPUTER VENDOR DETAILS",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.computerVendorDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "N CAR REQUESTED PAGE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.nCarRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "EV CAR REQUESTED PAGE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.evCarRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "REQUESTED PAGE  NBIKE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestedPageNbikeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "EV BIKE  REQUESTED PAGE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.evBikeRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About us",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LAPTOP REQUESTED PAGE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.laptopRequestedPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "COMPUTER REQUESTED PAGE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.computerRequestedPageScreen),
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
  Widget _buildAppNavigation(BuildContext context) {
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
                "App Navigation",
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
                "Check your app's UI from the below demo screens of your app.",
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
  Widget _buildScreenTitle(
    BuildContext context, {
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
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
