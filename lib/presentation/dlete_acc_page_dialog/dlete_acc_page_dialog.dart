import 'bloc/dlete_acc_page_bloc.dart';
import 'models/dlete_acc_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

class DleteAccPageDialog extends StatelessWidget {
  const DleteAccPageDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DleteAccPageBloc>(
        create: (context) => DleteAccPageBloc(
            DleteAccPageState(dleteAccPageModelObj: DleteAccPageModel()))
          ..add(DleteAccPageInitialEvent()),
        child: DleteAccPageDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 199.h,
        padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 7.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              width: 111.h,
              child: Text("msg_delete_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeMedium)),
          Text("msg2".tr, style: CustomTextStyles.titleLargeMedium),
          GestureDetector(
              onTap: () {
                onTapTxtDelete(context);
              },
              child: Text("lbl_delete".tr,
                  style: CustomTextStyles.titleLargeRedA700)),
          Text("msg2".tr, style: CustomTextStyles.titleLargeMedium),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtCancel(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 60.h),
                      child: Text("lbl_cancel".tr,
                          style: CustomTextStyles.titleLargeMedium))))
        ]));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtDelete(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapTxtCancel(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsPageScreen,
    );
  }
}
