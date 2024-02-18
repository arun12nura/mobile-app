import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/profile_bottomsheet/profile_bottomsheet.dart';
import 'package:dosvendor/presentation/change_password_one_dialog/change_password_one_dialog.dart';
import 'package:dosvendor/presentation/delete_account_dialog/delete_account_dialog.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Settings",
                                  style: CustomTextStyles.titleLargeMedium)),
                          SizedBox(height: 8.v),
                          Container(
                              width: 342.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.h, vertical: 59.v),
                              decoration: AppDecoration.outlineBlack900021
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Row(children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 2.v, bottom: 1.v),
                                              child: Column(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorBlack90002,
                                                    height: 15.v,
                                                    width: 16.h),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgContrast,
                                                    height: 6.v,
                                                    width: 8.h)
                                              ])),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 25.h),
                                              child: Text("Notification",
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                    SizedBox(height: 20.v),
                                    GestureDetector(
                                        onTap: () {
                                          onTapThirtyFour(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgLinkedinBlack90002,
                                                  height: 20.v,
                                                  width: 14.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 4.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 26.h),
                                                  child: Text(
                                                      "Saved Addresses ",
                                                      style: theme.textTheme
                                                          .titleLarge))
                                            ]))),
                                    SizedBox(height: 20.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgThumbsUp,
                                              height: 22.v,
                                              width: 19.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 2.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 23.h),
                                              child: Text("Clear chace",
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                    SizedBox(height: 20.v),
                                    GestureDetector(
                                        onTap: () {
                                          onTapThirtyOne(context);
                                        },
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgQrcode,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 4.v)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h, top: 3.v),
                                              child: Text("Change Password",
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                    SizedBox(height: 19.v),
                                    GestureDetector(
                                        onTap: () {
                                          onTapThirtyTwo(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 2.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCloseBlack90002,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 4.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 21.h),
                                                  child: Text("Delete account",
                                                      style: theme.textTheme
                                                          .titleLarge))
                                            ]))),
                                    SizedBox(height: 19.v)
                                  ]))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 28.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(1.h, 5.v, 333.h, 5.v),
            onTap: () {
              onTapArrowDown(context);
            }));
  }

  /// Shows a modal bottom sheet with [ProfileBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapArrowDown(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the locationScreen when the action is triggered.
  onTapThirtyFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationScreen);
  }

  /// Displays a dialog with the [ChangePasswordOneDialog] content.
  onTapThirtyOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ChangePasswordOneDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Displays a dialog with the [DeleteAccountDialog] content.
  onTapThirtyTwo(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: DeleteAccountDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
