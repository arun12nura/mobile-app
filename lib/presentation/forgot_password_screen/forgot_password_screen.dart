import 'controller/forgot_password_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/app_bar/appbar_leading_image.dart';import 'package:dos/widgets/app_bar/custom_app_bar.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/change_password_page_dialog/change_password_page_dialog.dart';import 'package:dos/presentation/change_password_page_dialog/controller/change_password_page_controller.dart';class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {const ForgotPasswordScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v), decoration: AppDecoration.gradientTealToWhiteA7002, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerLeft, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 3.v), onTap: () {onTapImgArrowDown();}), Padding(padding: EdgeInsets.only(left: 19.h), child: Text("msg_confirmation_page".tr, style: CustomTextStyles.bodyLargeInder))])), SizedBox(height: 57.v), _buildPasswordResetLinkRow(), SizedBox(height: 43.v), CustomElevatedButton(width: 88.h, text: "lbl_done".tr, onPressed: () {onTapDONE();}), SizedBox(height: 15.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 50.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDownBlack90001, margin: EdgeInsets.only(left: 13.h, right: 331.h))); } 
/// Section Widget
Widget _buildPasswordResetLinkRow() { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 100.v), decoration: AppDecoration.outlineBlack90001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgGoogle, height: 35.adaptSize, width: 35.adaptSize, margin: EdgeInsets.only(bottom: 196.v)), Expanded(child: Container(width: 246.h, margin: EdgeInsets.only(left: 16.h, right: 3.h, bottom: 194.v), child: Text("msg_password_reset_link".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumInder)))])); } 

/// Displays a dialog with the [ChangePasswordPageDialog] content.
onTapImgArrowDown() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:ChangePasswordPageDialog(Get.put(ChangePasswordPageController(),),),)); } 
/// Navigates to the logInScreen when the action is triggered.
onTapDONE() { Get.toNamed(AppRoutes.logInScreen, ); } 
 }
