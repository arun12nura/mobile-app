import 'bloc/st_page_bloc.dart';
import 'models/st_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

class StPageScreen extends StatelessWidget {
  const StPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StPageBloc>(
        create: (context) =>
            StPageBloc(StPageState(stPageModelObj: StPageModel()))
              ..add(StPageInitialEvent()),
        child: StPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StPageBloc, StPageState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.teal90001,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 21.v),
                  child: Column(children: [
                    Spacer(flex: 37),
                    CustomImageView(
                        imagePath: ImageConstant.imgEnlargeScreens,
                        height: 272.v,
                        width: 335.h,
                        radius:
                            BorderRadius.vertical(top: Radius.circular(25.h))),
                    Spacer(flex: 62),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 52.v,
                            width: 120.h,
                            margin: EdgeInsets.only(right: 102.h),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 41.v,
                                      width: 120.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.whiteA700,
                                          borderRadius:
                                              BorderRadius.circular(20.h),
                                          boxShadow: [
                                            BoxShadow(
                                                color: appTheme.black90001
                                                    .withOpacity(0.25),
                                                spreadRadius: 2.h,
                                                blurRadius: 2.h,
                                                offset: Offset(0, 4))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtStart(context);
                                      },
                                      child: Text("lbl_start".tr,
                                          style: CustomTextStyles
                                              .titleLargeInknutAntiqua)))
                            ])))
                  ]))));
    });
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtStart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }
}
