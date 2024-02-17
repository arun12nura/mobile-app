import 'controller/home_page_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';import 'package:dos/presentation/laptop_page_bottomsheet/controller/laptop_page_controller.dart';import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';import 'package:dos/presentation/car_page_bottomsheet/controller/car_page_controller.dart';import 'package:dos/presentation/bike_page_bottomsheet/bike_page_bottomsheet.dart';import 'package:dos/presentation/bike_page_bottomsheet/controller/bike_page_controller.dart';class HomePageScreen extends GetWidget<HomePageController> {const HomePageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, padding: EdgeInsets.only(bottom: 64.v), decoration: BoxDecoration(color: appTheme.whiteA700, gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.teal400.withOpacity(0.91), appTheme.teal20068, appTheme.whiteA700.withOpacity(0)])), child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 23.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildWelcomeRow(), SizedBox(height: 18.v), _buildWidgetRow(), SizedBox(height: 15.v), CustomImageView(imagePath: ImageConstant.imgRectangle6, height: 150.adaptSize, width: 150.adaptSize, radius: BorderRadius.circular(25.h), onTap: () {onTapImgImage2();}), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildWelcomeRow() { return Padding(padding: EdgeInsets.only(left: 4.h, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 9.v), child: Text("lbl_welcome".tr, style: CustomTextStyles.titleLargeLaoSansPro)), CustomImageView(imagePath: ImageConstant.imgPlay, height: 35.v, width: 36.h, onTap: () {onTapImgPlay();})])); } 
/// Section Widget
Widget _buildWidgetRow() { return Padding(padding: EdgeInsets.only(right: 15.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage, height: 150.adaptSize, width: 150.adaptSize, radius: BorderRadius.circular(25.h), onTap: () {onTapImgImage();}), CustomImageView(imagePath: ImageConstant.imgRectangle4, height: 150.adaptSize, width: 150.adaptSize, radius: BorderRadius.circular(25.h), margin: EdgeInsets.only(left: 15.h), onTap: () {onTapImgImage1();})])); } 
/// Section Widget
Widget _buildBottomBar() { return Container(decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(25.h)), gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.teal400E8, appTheme.teal400E801])), child: Padding(padding: EdgeInsets.fromLTRB(47.h, 16.v, 35.h, 16.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(height: 32.v, width: 109.h, text: "lbl_home".tr, leftIcon: Container(margin: EdgeInsets.only(right: 11.h), child: CustomImageView(imagePath: ImageConstant.imgHome, height: 20.v, width: 18.h)), buttonStyle: CustomButtonStyles.fillRed, buttonTextStyle: CustomTextStyles.titleLargeBold), Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 1.v), decoration: AppDecoration.fillCyan.copyWith(borderRadius: BorderRadiusStyle.circleBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: 18.v, width: 16.h, margin: EdgeInsets.symmetric(vertical: 6.v), decoration: BoxDecoration(color: appTheme.teal20001, borderRadius: BorderRadius.vertical(bottom: Radius.circular(4.h)), border: Border.all(color: appTheme.teal20001, width: 2.h, strokeAlign: strokeAlignCenter))), Padding(padding: EdgeInsets.only(left: 11.h, top: 5.v), child: Text("lbl_profile".tr, style: CustomTextStyles.titleLargeTeal20001))]))]))); } 
/// Navigates to the profilePageScreen when the action is triggered.
onTapImgPlay() { Get.toNamed(AppRoutes.profilePageScreen, ); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [LaptopPageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [LaptopPageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapImgImage() { Get.bottomSheet(LaptopPageBottomsheet(Get.put(LaptopPageController(),),),isScrollControlled: true,); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [CarPageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [CarPageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapImgImage1() { Get.bottomSheet(CarPageBottomsheet(Get.put(CarPageController(),),),isScrollControlled: true,); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [BikePageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [BikePageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapImgImage2() { Get.bottomSheet(BikePageBottomsheet(Get.put(BikePageController(),),),isScrollControlled: true,); } 
 }
