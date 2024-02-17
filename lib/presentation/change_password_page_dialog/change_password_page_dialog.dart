import 'controller/change_password_page_controller.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ChangePasswordPageDialog extends StatelessWidget {ChangePasswordPageDialog(this.controller, {Key? key}) : super(key: key);

ChangePasswordPageController controller;

@override Widget build(BuildContext context) { return Container(width: 337.h, padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 50.v), decoration: AppDecoration.fillTeal400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_current_password".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 9.v), _buildPasswordField(), SizedBox(height: 8.v), Align(alignment: Alignment.centerRight, child: Opacity(opacity: 0.3, child: GestureDetector(onTap: () {onTapTxtFORGOTYOURPASSWORD();}, child: Container(width: 133.h, margin: EdgeInsets.only(right: 17.h), child: Text("msg_forgot_your_password2".tr, maxLines: 1, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelSmall))))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_new_password".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 16.v), _buildNewPasswordField(), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_re_type_new_password".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 6.v), _buildRetypeNewPasswordField(), SizedBox(height: 71.v), _buildConfirmButton(), SizedBox(height: 13.v)])); } 
/// Section Widget
Widget _buildPasswordField() { return Padding(padding: EdgeInsets.only(right: 17.h), child: CustomTextFormField(controller: controller.passwordFieldController, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24, fillColor: appTheme.whiteA700.withOpacity(0.77))); } 
/// Section Widget
Widget _buildNewPasswordField() { return Padding(padding: EdgeInsets.only(right: 17.h), child: CustomTextFormField(controller: controller.newPasswordFieldController, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24, fillColor: appTheme.whiteA700.withOpacity(0.77))); } 
/// Section Widget
Widget _buildRetypeNewPasswordField() { return Padding(padding: EdgeInsets.only(right: 17.h), child: CustomTextFormField(controller: controller.retypeNewPasswordFieldController, textInputAction: TextInputAction.done, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24, fillColor: appTheme.whiteA700.withOpacity(0.77))); } 
/// Section Widget
Widget _buildConfirmButton() { return CustomElevatedButton(height: 27.v, width: 75.h, text: "lbl_confirm".tr, margin: EdgeInsets.only(left: 114.h), buttonStyle: CustomButtonStyles.fillRedTL13, buttonTextStyle: theme.textTheme.titleSmall!); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.
onTapTxtFORGOTYOURPASSWORD() { Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
 }
