import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/change_password_page_dialog/change_password_page_dialog.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => ForgotPasswordBloc(
            ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))
          ..add(ForgotPasswordInitialEvent()),
        child: ForgotPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
                  decoration: AppDecoration.gradientTealToWhiteA7002,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowDown,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(top: 3.v),
                              onTap: () {
                                onTapImgArrowDown(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Text("msg_confirmation_page".tr,
                                  style: CustomTextStyles.bodyLargeInder))
                        ])),
                    SizedBox(height: 57.v),
                    _buildPasswordResetLinkRow(context),
                    SizedBox(height: 43.v),
                    CustomElevatedButton(
                        width: 88.h,
                        text: "lbl_done".tr,
                        onPressed: () {
                          onTapDONE(context);
                        }),
                    SizedBox(height: 15.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90001,
            margin: EdgeInsets.only(left: 13.h, right: 331.h)));
  }

  /// Section Widget
  Widget _buildPasswordResetLinkRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 100.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGoogle,
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  margin: EdgeInsets.only(bottom: 196.v)),
              Expanded(
                  child: Container(
                      width: 246.h,
                      margin: EdgeInsets.only(
                          left: 16.h, right: 3.h, bottom: 194.v),
                      child: Text("msg_password_reset_link".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumInder)))
            ]));
  }

  /// Displays a dialog with the [ChangePasswordPageDialog] content.
  onTapImgArrowDown(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ChangePasswordPageDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapDONE(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
