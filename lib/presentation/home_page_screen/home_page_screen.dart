import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';
import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';
import 'package:dos/presentation/bike_page_bottomsheet/bike_page_bottomsheet.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
        create: (context) =>
            HomePageBloc(HomePageState(homePageModelObj: HomePageModel()))
              ..add(HomePageInitialEvent()),
        child: HomePageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 23.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildWelcomeRow(context),
                            SizedBox(height: 18.v),
                            _buildWidgetRow(context),
                            SizedBox(height: 15.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle6,
                                height: 150.adaptSize,
                                width: 150.adaptSize,
                                radius: BorderRadius.circular(25.h),
                                onTap: () {
                                  onTapImgImage2(context);
                                }),
                            SizedBox(height: 5.v)
                          ]))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildWelcomeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Text("lbl_welcome".tr,
                      style: CustomTextStyles.titleLargeLaoSansPro)),
              CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 35.v,
                  width: 36.h,
                  onTap: () {
                    onTapImgPlay(context);
                  })
            ]));
  }

  /// Section Widget
  Widget _buildWidgetRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 15.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 150.adaptSize,
              width: 150.adaptSize,
              radius: BorderRadius.circular(25.h),
              onTap: () {
                onTapImgImage(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle4,
              height: 150.adaptSize,
              width: 150.adaptSize,
              radius: BorderRadius.circular(25.h),
              margin: EdgeInsets.only(left: 15.h),
              onTap: () {
                onTapImgImage1(context);
              })
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
            padding: EdgeInsets.fromLTRB(47.h, 16.v, 35.h, 16.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                      height: 32.v,
                      width: 109.h,
                      text: "lbl_home".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 11.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgHome,
                              height: 20.v,
                              width: 18.h)),
                      buttonStyle: CustomButtonStyles.fillRed,
                      buttonTextStyle: CustomTextStyles.titleLargeBold),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.h, vertical: 1.v),
                      decoration: AppDecoration.fillCyan.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 18.v,
                                width: 16.h,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                                decoration: BoxDecoration(
                                    color: appTheme.teal20001,
                                    borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(4.h)),
                                    border: Border.all(
                                        color: appTheme.teal20001,
                                        width: 2.h,
                                        strokeAlign: strokeAlignCenter))),
                            Padding(
                                padding: EdgeInsets.only(left: 11.h, top: 5.v),
                                child: Text("lbl_profile".tr,
                                    style:
                                        CustomTextStyles.titleLargeTeal20001))
                          ]))
                ])));
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapImgPlay(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [LaptopPageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapImgImage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => LaptopPageBottomsheet.builder(context),
        isScrollControlled: true);
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [CarPageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapImgImage1(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => CarPageBottomsheet.builder(context),
        isScrollControlled: true);
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [BikePageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapImgImage2(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => BikePageBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
