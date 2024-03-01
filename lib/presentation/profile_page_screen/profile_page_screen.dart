import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img2Layers,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtMybookings(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("My bookings", style: theme.textTheme.titleSmall),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              GestureDetector(
                onTap: () {
                  onTapInviteFrds(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSearchBlack9000116x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtInvitefriends(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Invite friends", style: theme.textTheme.titleSmall),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              GestureDetector(
                onTap: () {
                  onTapSettings(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsBlack9000116x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtSettings(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Settings", style: theme.textTheme.titleSmall),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              GestureDetector(
                onTap: () {
                  onTapClock(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtPreviousBooking(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text("Previous Booking", style: theme.textTheme.titleSmall),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              GestureDetector(
                onTap: () {
                  onTapLogOut(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogOut,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtLogout(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Log out", style: theme.textTheme.titleSmall),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 32.v,
                  width: 109.h,
                  margin: EdgeInsets.only(right: 19.h),
                  decoration: BoxDecoration(color: appTheme.cyan50, borderRadius: BorderRadius.circular(16.h)),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
      decoration: BoxDecoration(
        color: Colors.white, // Change the color here
        borderRadius: BorderRadius.circular(20.h),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                Text("Verfied Customer", style: CustomTextStyles.bodyLargeLatoBluegray900),
                Container(
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 3.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorBlueGray900,
                        height: 4.v,
                        width: 6.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse4,
                  height: 91.adaptSize,
                  width: 91.adaptSize,
                  radius: BorderRadius.circular(45.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEdit,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(top: 10.v, bottom: 2.v),
                      onTap: () {
                        onTapImgEdit(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.h)),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.teal400E8, appTheme.teal400E801],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 16.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomElevatedButton(
              height: 32.v,
              width: 109.h,
              text: "Home",
              leftIcon: Container(
                margin: EdgeInsets.only(right: 11.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgHomeTeal20001,
                  height: 20.v,
                  width: 18.h,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillCyan,
              buttonTextStyle: CustomTextStyles.titleLargeTeal20001Bold,
              onPressed: () {
                onTapHome(context); // Navigate to home page
              },
            ),
            Container(
              height: 18.v,
              width: 16.h,

              margin: EdgeInsets.only(left: 68.h, top: 6.v, bottom: 8.v),
              decoration: BoxDecoration(
                color: appTheme.black90001.withOpacity(0.84),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(4.h)),
                border: Border.all(color: appTheme.black90001, width: 2.h, strokeAlign: strokeAlignCenter),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 4.v),
              child: Text("Profile", style: CustomTextStyles.titleLargeBold),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the editProfilePageScreen when the action is triggered.
  onTapImgEdit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfilePageScreen);
  }

  /// Navigates to the myBookingScreen when the action is triggered.
  onTapMyBooking(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myBookingScreen);
  }

  /// Navigates to the myBookingScreen when the action is triggered.
  onTapTxtMybookings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myBookingScreen);
  }

  /// Navigates to the referalPageScreen when the action is triggered.
  onTapInviteFrds(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.referalPageScreen);
  }

  /// Navigates to the referalPageScreen when the action is triggered.
  onTapTxtInvitefriends(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.referalPageScreen);
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageScreen);
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapTxtSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageScreen);
  }

  /// Navigates to the previousBookingsScreen when the action is triggered.
  onTapClock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.previousBookingsScreen);
  }

  /// Navigates to the previousBookingsScreen when the action is triggered.
  onTapTxtPreviousBooking(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.previousBookingsScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapLogOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
