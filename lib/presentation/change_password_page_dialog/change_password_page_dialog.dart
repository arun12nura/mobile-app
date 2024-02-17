import 'package:dos/core/app_export.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ChangePasswordPageDialog extends StatelessWidget {ChangePasswordPageDialog({Key? key}) : super(key: key);

TextEditingController passwordFieldController = TextEditingController();

TextEditingController newPasswordFieldController = TextEditingController();

TextEditingController retypeNewPasswordFieldController = TextEditingController();

@override Widget build(BuildContext context) { return Container(width: 337.h, padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 50.v), decoration: AppDecoration.fillTeal400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Current Password:", style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 9.v), _buildPasswordField(context), SizedBox(height: 8.v), Align(alignment: Alignment.centerRight, child: Opacity(opacity: 0.3, child: GestureDetector(onTap: () {onTapTxtFORGOTYOURPASSWORD(context);}, child: Container(width: 133.h, margin: EdgeInsets.only(right: 17.h), child: Text("FORGOT  YOUR PASSWORD", maxLines: 1, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelSmall))))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("New Password:", style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 16.v), _buildNewPasswordField(context), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Re type  New Password :", style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 6.v), _buildRetypeNewPasswordField(context), SizedBox(height: 71.v), _buildConfirmButton(context), SizedBox(height: 13.v)])); } 
/// Section Widget
Widget _buildPasswordField(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 17.h), child: CustomTextFormField(controller: passwordFieldController, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24, fillColor: appTheme.whiteA700.withOpacity(0.77))); } 
/// Section Widget
Widget _buildNewPasswordField(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 17.h), child: CustomTextFormField(controller: newPasswordFieldController, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24, fillColor: appTheme.whiteA700.withOpacity(0.77))); } 
/// Section Widget
Widget _buildRetypeNewPasswordField(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 17.h), child: CustomTextFormField(controller: retypeNewPasswordFieldController, textInputAction: TextInputAction.done, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlineBlackTL24, fillColor: appTheme.whiteA700.withOpacity(0.77))); } 
/// Section Widget
Widget _buildConfirmButton(BuildContext context) { return CustomElevatedButton(height: 27.v, width: 75.h, text: "Confirm", margin: EdgeInsets.only(left: 114.h), buttonStyle: CustomButtonStyles.fillRedTL13, buttonTextStyle: theme.textTheme.titleSmall!); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.
onTapTxtFORGOTYOURPASSWORD(BuildContext context) { Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen); } 
 }
