import 'package:dosvendor/core/app_export.dart';
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
                          screenTitle: "log in LAP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logInLapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CREATE ACCOUNT LAP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createAccountLapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Laptop Booking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.laptopBookingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ACCOUNT CREATED LAP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountCreatedLapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Accepted Status LAP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.acceptedStatusLapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "my services",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myServicesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "supporrt",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.supporrtScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About dos",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutDosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "START",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.startScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SERVICES",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.servicesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "log in  CAR",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logInCarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CREATE ACCOUNT  CAR",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createAccountCarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Car Booking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.carBookingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QR CODE",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.qrCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ACCOUNT CREATED CAR",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountCreatedCarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Accepted Status  CAR",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.acceptedStatusCarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "log in  BIKE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logInBikeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "VERIFICATION -CHANGE PASS",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationChangePassScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CREATE ACCOUNT BIKE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createAccountBikeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ACCOUNT CREATED  BIKE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountCreatedBikeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bike Booking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bikeBookingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Accepted Status  BIKE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.acceptedStatusBikeScreen),
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
