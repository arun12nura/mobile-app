import 'controller/created_account_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class CreatedAccountScreen extends GetWidget<CreatedAccountController> {const CreatedAccountScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: appTheme.whiteA700, gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.teal400.withOpacity(0.91), appTheme.teal20068, appTheme.whiteA700.withOpacity(0)])), child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 23.v), Expanded(child: Container(margin: EdgeInsets.only(left: 2.h), padding: EdgeInsets.all(1.h), decoration: AppDecoration.outlineBlack90001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgEnlargeScreens, height: 272.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(25.h))), Spacer(), SizedBox(width: 216.h, child: Text("msg_your_account_has".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleLargeWhiteA700)), SizedBox(height: 55.v), CustomElevatedButton(height: 50.v, width: 180.h, text: "lbl_continue".tr, buttonStyle: CustomButtonStyles.fillWhiteA, buttonTextStyle: theme.textTheme.titleLarge!, onPressed: () {onTapContinue();}), SizedBox(height: 49.v)])))]))))); } 
/// Navigates to the logInScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.logInScreen, ); } 
 }
