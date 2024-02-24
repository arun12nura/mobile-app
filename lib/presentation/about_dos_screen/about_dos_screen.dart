import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/profile_lap_bottomsheet/profile_lap_bottomsheet.dart';

class AboutDosScreen extends StatelessWidget {
  const AboutDosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.gray90001,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.gray90001,
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black90002.withOpacity(0.25),
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
                          appTheme.blueGray100B7
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 9.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildNameAndImage(context),
                          SizedBox(height: 5.v),
                          Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              color: appTheme.teal400,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder40),
                              child: Container(
                                  height: 528.v,
                                  width: 342.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.h, vertical: 10.v),
                                  decoration: AppDecoration.outlineBlack900022
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder40),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle4,
                                            height: 166.v,
                                            width: 335.h,
                                            radius: BorderRadius.vertical(
                                                top: Radius.circular(32.h)),
                                            alignment: Alignment.topCenter),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Opacity(
                                                opacity: 0.77,
                                                child: Container(
                                                    width: 316.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 11.v),
                                                    child: Text(
                                                        "Welcome to DOS - the Department of Service, where our commitment is to empower and elevate your experience. At DOS, we're dedicated to delivering a seamless and user-centric approach to various services. From our mission to our diverse range of offerings, DOS is your one-stop destination for innovative solutions and exceptional support. Discover a world of efficiency and excellence with DOS, where service is not just a department, but a passion....",
                                                        maxLines: 12,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: CustomTextStyles
                                                            .bodyLargeBlack90002)))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEnlargeScreens,
                                            height: 264.v,
                                            width: 335.h,
                                            radius: BorderRadius.vertical(
                                                top: Radius.circular(25.h)),
                                            alignment: Alignment.topCenter)
                                      ])))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 39.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(9.h, 9.v, 335.h, 9.v),
            onTap: () {
              onTapArrowDown(context);
            }));
  }
//raghavan
  /// Section Widget
  Widget _buildNameAndImage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DOS", style: CustomTextStyles.displaySmallInter),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse4,
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  radius: BorderRadius.circular(18.h),
                  margin: EdgeInsets.only(bottom: 6.v))
            ]));
  }

  /// Shows a modal bottom sheet with [ProfileLapBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapArrowDown(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileLapBottomsheet(),
        isScrollControlled: true);
  }
}
