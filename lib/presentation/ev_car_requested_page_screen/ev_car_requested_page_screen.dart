import 'bloc/ev_car_requested_page_bloc.dart';
import 'models/ev_car_requested_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class EvCarRequestedPageScreen extends StatelessWidget {
  const EvCarRequestedPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<EvCarRequestedPageBloc>(
        create: (context) => EvCarRequestedPageBloc(EvCarRequestedPageState(
            evCarRequestedPageModelObj: EvCarRequestedPageModel()))
          ..add(EvCarRequestedPageInitialEvent()),
        child: EvCarRequestedPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EvCarRequestedPageBloc, EvCarRequestedPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 9.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 107.h, vertical: 50.v),
                            decoration: AppDecoration.outlineBlack90001
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder40),
                            child: Text("lbl_rahul_krishna".tr,
                                style: CustomTextStyles
                                    .bodyLargeLatoBluegray900))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 9.h, vertical: 11.v),
                            decoration: AppDecoration.gradientTealToWhiteA7001,
                            child: Container(
                                width: 342.h,
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                decoration: AppDecoration.outlineBlack90001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder40),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildAppBar(context),
                                      SizedBox(height: 8.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h, right: 45.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse475x76,
                                                height: 75.v,
                                                width: 76.h,
                                                radius:
                                                    BorderRadius.circular(38.h),
                                                margin: EdgeInsets.only(
                                                    bottom: 1.v)),
                                            Expanded(
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.h),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          39.h),
                                                              child: Text(
                                                                  "lbl_rahul_krishna"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyLargeLatoBluegray900)),
                                                          SizedBox(height: 3.v),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          39.h),
                                                              child: Text(
                                                                  "lbl_ryan_services"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyLargeLatoWhiteA700)),
                                                          SizedBox(height: 4.v),
                                                          CustomElevatedButton(
                                                              height: 28.v,
                                                              text:
                                                                  "lbl_requested"
                                                                      .tr,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .outlineBlack,
                                                              buttonTextStyle:
                                                                  CustomTextStyles
                                                                      .bodyLargeLato)
                                                        ])))
                                          ])),
                                      SizedBox(height: 8.v)
                                    ]))))
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 15.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_vendors".tr));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
