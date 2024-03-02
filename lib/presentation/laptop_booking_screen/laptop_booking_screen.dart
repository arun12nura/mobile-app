import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_title.dart';
import 'package:dosvendor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/widgets/custom_elevated_button.dart';

class LaptopBookingScreen extends StatelessWidget {
  late final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey;

  LaptopBookingScreen({Key? key}) : super(key: key) {
    _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: RefreshIndicator(
          key: _refreshIndicatorKey,
          onRefresh: () async {
            // Simulate fetching data from MySQL
            await Future.delayed(Duration(seconds: 2));
          },
          child: Container(
            width: SizeUtils.width,
            height: SizeUtils.height,
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              boxShadow: [
                BoxShadow(
                  color: appTheme.black90002.withOpacity(0.25),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(0, 4),
                )
              ],
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.teal400,
                  appTheme.teal20068,
                  appTheme.whiteA700.withOpacity(0),
                ],
              ),
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 24.v),
                  _buildCheckmarkRow(context),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildProfileButton(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "My Services",
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlay,
          margin: EdgeInsets.symmetric(horizontal: 21.h, vertical: 10.v),
        ),
      ],
    );
  }

  Widget _buildCheckmarkRow(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchDataFromMySQL(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        // Get data from snapshot
        String brand = snapshot.data?['brand'] ?? "";
        String model = snapshot.data?['model'] ?? "";
        String warranty = snapshot.data?['warranty'] ?? "";
        String issue = snapshot.data?['issue'] ?? "";

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 9.v),
          decoration: AppDecoration.outlineBlack90002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder40,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle33,
                      height: 110.adaptSize,
                      width: 110.adaptSize,
                      radius: BorderRadius.circular(16.h),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
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
                                  horizontal: 12.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillTeal.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder8,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    onTapImgCheckmark(context);
                                  },
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 11.v,
                                    width: 16.h,
                                    alignment: Alignment.bottomLeft,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 15.h),
                                child: Text(
                                  "Accept",
                                  style: CustomTextStyles.bodyMediumGray600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h, top: 39.v, right: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar,
                          height: 10.v,
                          width: 18.h,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            brand, // Display brand fetched from MySQL
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "z",
                              style: CustomTextStyles.bodyMediumLibreBarcode39ExtendedBlack90002,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              model, // Display model fetched from MySQL
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgShield,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h, top: 2.v),
                          child: Text(
                            warranty, // Display warranty info fetched from MySQL
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBug,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              issue, // Display issue fetched from MySQL
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 19.v,
                        width: 97.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 7.adaptSize,
                              width: 7.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 10.h, top: 5.v),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 18.v,
                                width: 97.h,
                                decoration: BoxDecoration(
                                  color: appTheme.teal100,
                                  borderRadius: BorderRadius.circular(9.h),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 21.h),
                                child: GestureDetector(
                                  onTap: () {
                                    onTapReject(context);
                                  },
                                  child: Text(
                                    "Reject",
                                    style: CustomTextStyles.bodyMediumGray600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProfileButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 127.h, vertical: 17.v),
      child: GestureDetector(
        onTap: () {
          onTapProfile(context);
        },
        child: CustomElevatedButton(
          text: 'Profile',
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.profileLapBottomsheet);
          },
          buttonStyle: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          buttonTextStyle: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  void onTapImgCheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.acceptedStatusLapScreen).then((value) {
      if (value == true) {
        // Do something if needed after accepting the action
      } else {
        // Do something if needed after rejecting the action
      }
    });
  }

  void onTapReject(BuildContext context) {
    _refreshIndicatorKey.currentState?.show();
  }

  void onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileLapBottomsheet);
  }

  // Function to fetch data from MySQL
  Future<Map<String, dynamic>> fetchDataFromMySQL() async {
    // Simulate fetching data from MySQL, replace this with your actual implementation
    await Future.delayed(Duration(seconds: 2)); // Simulating delay
    return {
      'brand': 'Lenovo',
      'model': 'IdeaPad 520',
      'warranty': 'No warranty',
      'issue': 'Keyboard not working',
    };
  }
}
