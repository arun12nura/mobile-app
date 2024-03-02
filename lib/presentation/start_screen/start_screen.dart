import 'package:dosvendor/core/app_export.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.teal90001,
        body: Center(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 21.v),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEnlargeScreens,
                        height: 272.v,
                        width: 335.h,
                        radius: BorderRadius.vertical(top: Radius.circular(25.h)),
                      ),
                      SizedBox(height: 20.v), // Add space between image and text
                      Text(
                        "VENDOR",
                        style: CustomTextStyles.titleLargeInknutAntiqua.copyWith(
                          color: appTheme.whiteA700,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.v), // Add space between text and button
                GestureDetector(
                  onTap: () {
                    onTapTxtStart(context);
                  },
                  child: Container(
                    height: 52.v,
                    width: 120.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(20.h),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.black90002.withOpacity(0.25),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Start",
                        style: CustomTextStyles.titleLargeInknutAntiqua.copyWith(
                          color: appTheme.teal90001,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the servicesScreen when the action is triggered.
  void onTapTxtStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }
}
