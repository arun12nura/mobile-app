import 'package:dos/core/app_export.dart';import 'package:dos/widgets/app_bar/appbar_leading_image.dart';import 'package:dos/widgets/app_bar/custom_app_bar.dart';import 'package:dos/widgets/custom_elevated_button.dart';import 'package:dos/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SupportPageScreen extends StatelessWidget {SupportPageScreen({Key? key}) : super(key: key);

TextEditingController nameEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController problemValueEditTextController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: appTheme.whiteA700, gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.teal400.withOpacity(0.91), appTheme.teal20068, appTheme.whiteA700.withOpacity(0)])), child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgSearchBlack90001, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("Support", style: theme.textTheme.titleSmall))]), SizedBox(height: 77.v), Align(alignment: Alignment.center, child: Container(width: 301.h, margin: EdgeInsets.symmetric(horizontal: 13.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 21.v), decoration: AppDecoration.outlineBlack900015.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Contact Us", style: CustomTextStyles.headlineLargeInterBlack90001), SizedBox(height: 42.v), _buildNameEditText(context), SizedBox(height: 39.v), _buildEmailEditText(context), SizedBox(height: 31.v), _buildProblemValueEditText(context), SizedBox(height: 85.v), _buildSubmitButton(context), SizedBox(height: 7.v)]))), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 43.v, leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDownBlack90001, margin: EdgeInsets.fromLTRB(16.h, 13.v, 328.h, 13.v), onTap: () {onTapArrowDown(context);})); } 
/// Section Widget
Widget _buildNameEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 5.h, right: 14.h), child: CustomTextFormField(controller: nameEditTextController, hintText: "Name", hintStyle: CustomTextStyles.bodyMediumInter, contentPadding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 11.v), borderDecoration: TextFormFieldStyleHelper.outlineBlack1, fillColor: appTheme.whiteA700)); } 
/// Section Widget
Widget _buildEmailEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 5.h, right: 14.h), child: CustomTextFormField(controller: emailEditTextController, hintText: "Email", hintStyle: CustomTextStyles.bodyMediumInter, textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v), borderDecoration: TextFormFieldStyleHelper.outlineBlack1, fillColor: appTheme.whiteA700)); } 
/// Section Widget
Widget _buildProblemValueEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 5.h, right: 14.h), child: CustomTextFormField(controller: problemValueEditTextController, hintText: "Problem", hintStyle: CustomTextStyles.bodyMediumInter, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.v), borderDecoration: TextFormFieldStyleHelper.outlineBlack1, fillColor: appTheme.whiteA700)); } 
/// Section Widget
Widget _buildSubmitButton(BuildContext context) { return CustomElevatedButton(height: 38.v, width: 108.h, text: "Submit", buttonTextStyle: CustomTextStyles.bodyMediumInter, onPressed: () {onTapSubmitButton(context);}, alignment: Alignment.center); } 
/// Navigates to the settingsPageScreen when the action is triggered.
onTapArrowDown(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsPageScreen); } 
/// Navigates to the settingsPageScreen when the action is triggered.
onTapSubmitButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsPageScreen); } 
 }
