import 'bloc/referal_page_bloc.dart';
import 'models/referal_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/app_bar/appbar_leading_image.dart';
import 'package:dos/widgets/app_bar/custom_app_bar.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ReferalPageScreen extends StatelessWidget {
  const ReferalPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ReferalPageBloc>(
      create: (context) => ReferalPageBloc(ReferalPageState(
        referalPageModelObj: ReferalPageModel(),
      ))
        ..add(ReferalPageInitialEvent()),
      child: ReferalPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 222.v,
                  width: 351.h,
                  margin: EdgeInsets.only(top: 44.v),
                  decoration: BoxDecoration(
                    color: appTheme.teal400,
                    borderRadius: BorderRadius.circular(
                      40.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black90001.withOpacity(0.22),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          -1,
                          9,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: AppDecoration.gradientTealToWhiteA7001,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAppBar(context),
                      SizedBox(height: 31.v),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 38.v,
                          width: 206.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "msg_1_referral_rs_20".tr,
                                  style: CustomTextStyles.bodyLargeIndigo500,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "msg_you_and_your_friend".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 31.h,
                          right: 44.h,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgUserImage59x59,
                                  height: 59.adaptSize,
                                  width: 59.adaptSize,
                                  radius: BorderRadius.circular(
                                    29.h,
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  width: 40.h,
                                  margin: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "msg_refer_a_friend".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallInterBlack90001,
                                  ),
                                ),
                              ],
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(
                                left: 15.h,
                                top: 18.v,
                                bottom: 56.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 59.adaptSize,
                                      width: 59.adaptSize,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 59.adaptSize,
                                              width: 59.adaptSize,
                                              decoration: BoxDecoration(
                                                color: appTheme.redA200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  29.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgGroup4,
                                            height: 40.v,
                                            width: 43.h,
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  SizedBox(
                                    width: 59.h,
                                    child: Text(
                                      "msg_rs_20_on".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallInterBlack90001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(
                                left: 18.h,
                                top: 18.v,
                                bottom: 56.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Column(
                                children: [
                                  Container(
                                    height: 59.adaptSize,
                                    width: 59.adaptSize,
                                    decoration: BoxDecoration(
                                      color: appTheme.redA200,
                                      borderRadius: BorderRadius.circular(
                                        29.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 6.v),
                                  SizedBox(
                                    width: 67.h,
                                    child: Text(
                                      "msg_rs_20_on_first".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallInterBlack90001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 81.v),
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "lbl_referral_link".tr,
                          style: CustomTextStyles.bodySmallInterBluegray500,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          right: 44.h,
                        ),
                        child: BlocSelector<ReferalPageBloc, ReferalPageState,
                            TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomTextFormField(
                              controller: searchController,
                              textInputAction: TextInputAction.done,
                              suffix: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 14.h,
                                  vertical: 13.v,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSearch,
                                  height: 20.v,
                                  width: 18.h,
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: 46.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA,
                              fillColor: appTheme.whiteA700,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "lbl_total_rewards".tr,
                          style: CustomTextStyles.bodyLargeRedA200,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      _buildStackWithImages(context),
                      SizedBox(height: 20.v),
                      _buildInterfaceUser(context),
                      SizedBox(height: 36.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_submit".tr,
                          style: CustomTextStyles.bodyMediumInterWhiteA700,
                        ),
                      ),
                      SizedBox(height: 42.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 16.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgPath10,
        margin: EdgeInsets.only(
          left: 15.h,
          right: 329.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackWithImages(BuildContext context) {
    return Container(
      height: 51.v,
      width: 293.h,
      margin: EdgeInsets.only(left: 23.h),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 51.v,
              width: 293.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black90001.withOpacity(0.25),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup4,
            height: 23.v,
            width: 25.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 8.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup4,
            height: 20.v,
            width: 22.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 23.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInterfaceUser(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 23.h,
        right: 44.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlack900012,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgInterfaceUser,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 8.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_0_friends".tr,
                  style: CustomTextStyles.bodySmallInterBlack90001,
                ),
                SizedBox(height: 5.v),
                Text(
                  "msg_accepted_your_referral".tr,
                  style: CustomTextStyles.bodySmallInterBluegray200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
