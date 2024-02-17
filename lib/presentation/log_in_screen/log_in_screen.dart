import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/core/utils/validation_functions.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgVector1,
                          height: 98.v,
                          width: 360.h),
                      SizedBox(height: 20.v),
                      Text("lbl_hello".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 30.v),
                      Text("msg_sign_in_to_your".tr,
                          style: CustomTextStyles.bodyLargeLatoGray90002),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: BlocSelector<LogInBloc, LogInState,
                                  TextEditingController?>(
                              selector: (state) => state.mobileController,
                              builder: (context, mobileController) {
                                return CustomTextFormField(
                                    controller: mobileController,
                                    hintText: "lbl_mobile".tr,
                                    textInputType: TextInputType.phone,
                                    validator: (value) {
                                      if (!isValidPhone(value)) {
                                        return "err_msg_please_enter_valid_phone_number"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 16.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.outlineBlack,
                                    fillColor: appTheme.whiteA700);
                              })),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: BlocSelector<LogInBloc, LogInState,
                                  TextEditingController?>(
                              selector: (state) => state.passwordController,
                              builder: (context, passwordController) {
                                return CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "lbl_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            18.h, 14.v, 13.h, 14.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocation,
                                            height: 17.v,
                                            width: 14.h)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 50.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    borderDecoration:
                                        TextFormFieldStyleHelper.outlineBlack,
                                    fillColor: appTheme.whiteA700);
                              })),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotYourPassword(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(right: 29.h),
                                  child: Text("msg_forgot_your_password".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray400)))),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 28.h),
                              child: Text("lbl_sign_in".tr,
                                  style: CustomTextStyles.labelLarge12))),
                      SizedBox(height: 3.v),
                      _buildLoginConfirmation(context)
                    ]))))));
  }

  /// Section Widget
  Widget _buildLoginConfirmation(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 30.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: 238.v,
                  width: 231.h,
                  margin: EdgeInsets.only(top: 12.v),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            height: 18.v,
                            width: 153.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("msg_don_t_have_an_account".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray90002)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("msg_don_t_have_an_account".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray90002))
                            ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector2,
                        height: 238.v,
                        width: 90.h,
                        alignment: Alignment.centerLeft)
                  ])),
              GestureDetector(
                  onTap: () {
                    onTapTxtCreate(context);
                  },
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 9.h, top: 123.v, bottom: 108.v),
                      child: Text("lbl_create".tr,
                          style: CustomTextStyles.titleSmallLatoGray90002))),
              GestureDetector(
                  onTap: () {
                    onTapThree(context);
                  },
                  child: Container(
                      height: 17.v,
                      width: 28.h,
                      margin: EdgeInsets.only(left: 15.h, bottom: 233.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 4.v),
                      decoration: AppDecoration.gradientPinkToDeepPurple
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 9.adaptSize,
                          width: 9.adaptSize,
                          alignment: Alignment.center)))
            ])));
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotYourPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtCreate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
