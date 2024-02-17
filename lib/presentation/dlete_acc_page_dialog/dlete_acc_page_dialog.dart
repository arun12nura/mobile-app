import 'package:dos/core/app_export.dart';import 'package:flutter/material.dart';class DleteAccPageDialog extends StatelessWidget {const DleteAccPageDialog({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: 199.h, padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 7.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.circleBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(width: 111.h, child: Text("Delete Your \n    Account?", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleLargeMedium)), Text("---------------------", style: CustomTextStyles.titleLargeMedium), GestureDetector(onTap: () {onTapTxtDelete(context);}, child: Text("Delete", style: CustomTextStyles.titleLargeRedA700)), Text("---------------------", style: CustomTextStyles.titleLargeMedium), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtCancel(context);}, child: Padding(padding: EdgeInsets.only(right: 60.h), child: Text("Cancel", style: CustomTextStyles.titleLargeMedium))))])); } 
/// Navigates to the logInScreen when the action is triggered.
onTapTxtDelete(BuildContext context) { Navigator.pushNamed(context, AppRoutes.logInScreen); } 
/// Navigates to the settingsPageScreen when the action is triggered.
onTapTxtCancel(BuildContext context) { Navigator.pushNamed(context, AppRoutes.settingsPageScreen); } 
 }
