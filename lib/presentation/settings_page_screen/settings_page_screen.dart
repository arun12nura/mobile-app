import 'bloc/settings_page_bloc.dart';
import 'models/settings_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/appbar_title.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/change_password_page_dialog/change_password_page_dialog.dart';
import 'package:dos/presentation/dlete_acc_page_dialog/dlete_acc_page_dialog.dart';

class SettingsPageScreen extends StatelessWidget {
  const SettingsPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsPageBloc>(
        create: (context) => SettingsPageBloc(
            SettingsPageState(settingsPageModelObj: SettingsPageModel()))
          ..add(SettingsPageInitialEvent()),
        child: SettingsPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsPageBloc, SettingsPageState>(
        builder: (context, state) {
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
                      width: 342.h,
                      margin: EdgeInsets.fromLTRB(12.h, 17.v, 6.h, 5.v),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 32.v),
                      decoration: AppDecoration.outlineBlack90001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder40),
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
                                            imagePath: ImageConstant.imgVector,
                                            height: 15.v,
                                            width: 16.h),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastBlack90001,
                                            height: 6.v,
                                            width: 8.h)
                                      ])),
                                  Padding(
                                      padding: EdgeInsets.only(left: 25.h),
                                      child: Text("lbl_notification".tr,
                                          style: theme.textTheme.titleLarge))
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
                                          imagePath: ImageConstant.imgLinkedin,
                                          height: 20.v,
                                          width: 14.h,
                                          margin: EdgeInsets.only(bottom: 4.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 26.h),
                                          child: Text("lbl_saved_addresses".tr,
                                              style:
                                                  theme.textTheme.titleLarge))
                                    ]))),
                            SizedBox(height: 20.v),
                            Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgThumbsUp,
                                      height: 22.v,
                                      width: 19.h,
                                      margin: EdgeInsets.only(bottom: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 23.h),
                                      child: Text("lbl_clear_chace".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                            SizedBox(height: 20.v),
                            GestureDetector(
                                onTap: () {
                                  onTapThirtyOne(context);
                                },
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgQrcode,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 4.v)),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 16.h, top: 3.v),
                                      child: Text("lbl_change_password".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                            SizedBox(height: 18.v),
                            GestureDetector(
                                onTap: () {
                                  onTapThirtyTwo(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgClose,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(top: 4.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 21.h),
                                          child: Text("lbl_delete_account".tr,
                                              style:
                                                  theme.textTheme.titleLarge))
                                    ]))),
                            SizedBox(height: 17.v),
                            GestureDetector(
                                onTap: () {
                                  onTapSupport(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgSearchBlack90001,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(top: 4.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 22.h),
                                          child: Text("lbl_support".tr,
                                              style:
                                                  theme.textTheme.titleLarge))
                                    ]))),
                            SizedBox(height: 22.v),
                            GestureDetector(
                                onTap: () {
                                  onTapAboutUs(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgUsers,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 5.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text("lbl_about_dos".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeMedium))
                                        ]))),
                            SizedBox(height: 5.v)
                          ])))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, top: 17.v, bottom: 22.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: AppbarTitle(
            text: "lbl_settings".tr, margin: EdgeInsets.only(left: 17.h)));
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }

  /// Navigates to the changeLocatoinPageScreen when the action is triggered.
  onTapThirtyFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.changeLocatoinPageScreen,
    );
  }

  /// Displays a dialog with the [ChangePasswordPageDialog] content.
  onTapThirtyOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ChangePasswordPageDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Displays a dialog with the [DleteAccPageDialog] content.
  onTapThirtyTwo(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: DleteAccPageDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the supportPageScreen when the action is triggered.
  onTapSupport(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.supportPageScreen,
    );
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapAboutUs(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.aboutUsScreen,
    );
  }
}
