import 'bloc/about_us_bloc.dart';
import 'models/about_us_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutUsBloc>(
        create: (context) =>
            AboutUsBloc(AboutUsState(aboutUsModelObj: AboutUsModel()))
              ..add(AboutUsInitialEvent()),
        child: AboutUsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutUsBloc, AboutUsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: appTheme.gray90001,
              appBar: _buildAppBar(context),
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      color: appTheme.gray90001,
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black90001.withOpacity(0.25),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 4))
                      ],
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.teal400,
                            appTheme.teal20068,
                            appTheme.blueGray100B7
                          ])),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildNameAndImage(context),
                            SizedBox(height: 5.v),
                            Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                color: appTheme.teal400,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder40),
                                child: Container(
                                    height: 528.v,
                                    width: 342.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 10.v),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder40),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle4166x335,
                                              height: 166.v,
                                              width: 335.h,
                                              radius: BorderRadius.vertical(
                                                  top: Radius.circular(32.h)),
                                              alignment: Alignment.topCenter),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Opacity(
                                                  opacity: 0.77,
                                                  child: Container(
                                                      width: 316.h,
                                                      margin: EdgeInsets.only(
                                                          bottom: 10.v),
                                                      child: Text(
                                                          "msg_welcome_to_dos"
                                                              .tr,
                                                          maxLines: 12,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyLargeBlack90001)))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEnlargeScreens,
                                              height: 264.v,
                                              width: 335.h,
                                              radius: BorderRadius.vertical(
                                                  top: Radius.circular(25.h)),
                                              alignment: Alignment.topCenter)
                                        ])))
                          ])))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 39.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90001,
            margin: EdgeInsets.fromLTRB(9.h, 9.v, 335.h, 9.v),
            onTap: () {
              onTapArrowDown(context);
            }));
  }

  /// Section Widget
  Widget _buildNameAndImage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_dos".tr, style: theme.textTheme.displaySmall),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse437x37,
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  radius: BorderRadius.circular(18.h),
                  margin: EdgeInsets.only(bottom: 6.v))
            ]));
  }

  /// Navigates to the settingsPageScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsPageScreen,
    );
  }
}
