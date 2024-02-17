import 'bloc/edit_profile_page_bloc.dart';
import 'models/edit_profile_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/appbar_subtitle.dart';
import 'package:dos/widgets/app_bar/appbar_title_image.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_icon_button.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditProfilePageScreen extends StatelessWidget {
  const EditProfilePageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<EditProfilePageBloc>(
        create: (context) => EditProfilePageBloc(EditProfilePageState(
            editProfilePageModelObj: EditProfilePageModel()))
          ..add(EditProfilePageInitialEvent()),
        child: EditProfilePageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                    height: 585.v,
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: EdgeInsets.only(bottom: 7.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17.h, vertical: 64.v),
                              decoration: AppDecoration.outlineBlack90001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 67.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 26.h),
                                        child: Text("lbl_name".tr,
                                            style: CustomTextStyles
                                                .titleLargeMedium)),
                                    _buildNameEditText(context),
                                    SizedBox(height: 15.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 26.h),
                                        child: Text("lbl_phone".tr,
                                            style: CustomTextStyles
                                                .titleLargeMedium)),
                                    _buildPhoneEditText(context),
                                    SizedBox(height: 18.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 26.h),
                                        child: Text("lbl_email".tr,
                                            style: CustomTextStyles
                                                .titleLargeMedium)),
                                    _buildEmailEditText(context),
                                    SizedBox(height: 64.v),
                                    _buildSaveButton(context)
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgUserImage,
                          height: 104.adaptSize,
                          width: 104.adaptSize,
                          radius: BorderRadius.circular(52.h),
                          alignment: Alignment.topCenter),
                      Padding(
                          padding: EdgeInsets.only(top: 75.v, right: 124.h),
                          child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              alignment: Alignment.topRight,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCamera)))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 55.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, top: 19.v, bottom: 20.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 31.h),
            child: Row(children: [
              AppbarSubtitle(text: "lbl_edit_profile".tr),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgEdit,
                  margin: EdgeInsets.only(left: 12.h, top: 1.v, bottom: 4.v))
            ])));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Opacity(
        opacity: 0.77,
        child: Padding(
            padding: EdgeInsets.only(left: 23.h, right: 20.h),
            child: BlocSelector<EditProfilePageBloc, EditProfilePageState,
                    TextEditingController?>(
                selector: (state) => state.nameEditTextController,
                builder: (context, nameEditTextController) {
                  return CustomTextFormField(
                      controller: nameEditTextController,
                      alignment: Alignment.center,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineBlackTL20,
                      fillColor: appTheme.whiteA700.withOpacity(0.63));
                })));
  }

  /// Section Widget
  Widget _buildPhoneEditText(BuildContext context) {
    return Opacity(
        opacity: 0.77,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, right: 17.h),
            child: BlocSelector<EditProfilePageBloc, EditProfilePageState,
                    TextEditingController?>(
                selector: (state) => state.phoneEditTextController,
                builder: (context, phoneEditTextController) {
                  return CustomTextFormField(
                      controller: phoneEditTextController,
                      alignment: Alignment.center,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineBlackTL20,
                      fillColor: appTheme.whiteA700.withOpacity(0.63));
                })));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Opacity(
        opacity: 0.77,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, right: 15.h),
            child: BlocSelector<EditProfilePageBloc, EditProfilePageState,
                    TextEditingController?>(
                selector: (state) => state.emailEditTextController,
                builder: (context, emailEditTextController) {
                  return CustomTextFormField(
                      controller: emailEditTextController,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineBlackTL20,
                      fillColor: appTheme.whiteA700.withOpacity(0.63));
                })));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        width: 137.h,
        text: "lbl_save".tr,
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: theme.textTheme.headlineSmall!,
        onPressed: () {
          onTapSaveButton(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapSaveButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }
}
