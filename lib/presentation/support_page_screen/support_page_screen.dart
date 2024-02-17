import 'bloc/support_page_bloc.dart';
import 'models/support_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/core/utils/validation_functions.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SupportPageScreen extends StatelessWidget {
  SupportPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SupportPageBloc>(
        create: (context) => SupportPageBloc(
            SupportPageState(supportPageModelObj: SupportPageModel()))
          ..add(SupportPageInitialEvent()),
        child: SupportPageScreen());
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
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSearchBlack90001,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(bottom: 1.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Text("lbl_support".tr,
                                            style: theme.textTheme.titleSmall))
                                  ]),
                                  SizedBox(height: 77.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: 301.h,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 13.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.h, vertical: 21.v),
                                          decoration: AppDecoration
                                              .outlineBlack900015
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder40),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_contact_us".tr,
                                                    style: CustomTextStyles
                                                        .headlineLargeInterBlack90001),
                                                SizedBox(height: 42.v),
                                                _buildNameEditText(context),
                                                SizedBox(height: 39.v),
                                                _buildEmailEditText(context),
                                                SizedBox(height: 31.v),
                                                _buildProblemValueEditText(
                                                    context),
                                                SizedBox(height: 85.v),
                                                _buildSubmitButton(context),
                                                SizedBox(height: 7.v)
                                              ]))),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 43.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90001,
            margin: EdgeInsets.fromLTRB(16.h, 13.v, 328.h, 13.v),
            onTap: () {
              onTapArrowDown(context);
            }));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 14.h),
        child: BlocSelector<SupportPageBloc, SupportPageState,
                TextEditingController?>(
            selector: (state) => state.nameEditTextController,
            builder: (context, nameEditTextController) {
              return CustomTextFormField(
                  controller: nameEditTextController,
                  hintText: "lbl_name".tr,
                  hintStyle: CustomTextStyles.bodyMediumInter,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 6.h, vertical: 11.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack1,
                  fillColor: appTheme.whiteA700);
            }));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 14.h),
        child: BlocSelector<SupportPageBloc, SupportPageState,
                TextEditingController?>(
            selector: (state) => state.emailEditTextController,
            builder: (context, emailEditTextController) {
              return CustomTextFormField(
                  controller: emailEditTextController,
                  hintText: "lbl_email".tr,
                  hintStyle: CustomTextStyles.bodyMediumInter,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack1,
                  fillColor: appTheme.whiteA700);
            }));
  }

  /// Section Widget
  Widget _buildProblemValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 14.h),
        child: BlocSelector<SupportPageBloc, SupportPageState,
                TextEditingController?>(
            selector: (state) => state.problemValueEditTextController,
            builder: (context, problemValueEditTextController) {
              return CustomTextFormField(
                  controller: problemValueEditTextController,
                  hintText: "lbl_problem".tr,
                  hintStyle: CustomTextStyles.bodyMediumInter,
                  textInputAction: TextInputAction.done,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack1,
                  fillColor: appTheme.whiteA700);
            }));
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
        height: 38.v,
        width: 108.h,
        text: "lbl_submit".tr,
        buttonTextStyle: CustomTextStyles.bodyMediumInter,
        onPressed: () {
          onTapSubmitButton(context);
        },
        alignment: Alignment.center);
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsPageScreen,
    );
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapSubmitButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsPageScreen,
    );
  }
}
