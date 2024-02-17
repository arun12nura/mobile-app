import 'bloc/change_locatoin_page_bloc.dart';
import 'models/change_locatoin_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ChangeLocatoinPageScreen extends StatelessWidget {
  const ChangeLocatoinPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChangeLocatoinPageBloc>(
        create: (context) => ChangeLocatoinPageBloc(ChangeLocatoinPageState(
            changeLocatoinPageModelObj: ChangeLocatoinPageModel()))
          ..add(ChangeLocatoinPageInitialEvent()),
        child: ChangeLocatoinPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18.v),
                          decoration: AppDecoration.gradientTealToWhiteA7001,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(context),
                            SizedBox(height: 18.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 20.h, right: 26.h),
                                child: BlocSelector<
                                        ChangeLocatoinPageBloc,
                                        ChangeLocatoinPageState,
                                        TextEditingController?>(
                                    selector: (state) => state.searchController,
                                    builder: (context, searchController) {
                                      return CustomSearchView(
                                          controller: searchController,
                                          hintText: "lbl_try_kavin_nager".tr);
                                    })),
                            SizedBox(height: 10.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgSave,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 6.h, top: 2.v, bottom: 3.v),
                                          child: Text(
                                              "msg_use_my_current_location".tr,
                                              style: theme.textTheme.bodyLarge))
                                    ]))),
                            SizedBox(height: 10.v)
                          ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(top: 164.v),
                          child: Text("msg".tr,
                              style: theme.textTheme.bodyLarge))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 20.h, right: 20.h, bottom: 24.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 18.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_saved_addresses2".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 30.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.h, right: 3.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgHome,
                                                  height: 20.v,
                                                  width: 18.h,
                                                  margin: EdgeInsets.only(
                                                      top: 8.v, bottom: 7.v)),
                                              Container(
                                                  height: 36.v,
                                                  width: 251.h,
                                                  margin: EdgeInsets.only(
                                                      left: 11.h),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                                "lbl_home_5_km"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeWhiteA700)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Text(
                                                                "msg_2_2_kkm_home_back"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeWhiteA700))
                                                      ]))
                                            ]))),
                                SizedBox(height: 24.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, right: 66.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgLockBlack90001,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 8.v, bottom: 7.v)),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 7.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_office".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeWhiteA700),
                                                    Text(
                                                        "msg_4_5_open_hall_coimbatore"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeWhiteA700)
                                                  ])))
                                    ])),
                                SizedBox(height: 24.v)
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 20.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, bottom: 3.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleThree(text: "msg_enter_your_area".tr));
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsPageScreen,
    );
  }
}
