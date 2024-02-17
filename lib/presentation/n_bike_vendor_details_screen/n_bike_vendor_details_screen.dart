import 'bloc/n_bike_vendor_details_bloc.dart';
import 'models/n_bike_vendor_details_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/bike_page_bottomsheet/bike_page_bottomsheet.dart';

class NBikeVendorDetailsScreen extends StatelessWidget {
  const NBikeVendorDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NBikeVendorDetailsBloc>(
        create: (context) => NBikeVendorDetailsBloc(NBikeVendorDetailsState(
            nBikeVendorDetailsModelObj: NBikeVendorDetailsModel()))
          ..add(NBikeVendorDetailsInitialEvent()),
        child: NBikeVendorDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NBikeVendorDetailsBloc, NBikeVendorDetailsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.teal400.withOpacity(0.91),
                            appTheme.teal20068,
                            appTheme.whiteA700.withOpacity(0)
                          ])),
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 10.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgArrowDown,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(top: 15.v),
                                          onTap: () {
                                            onTapImgArrowDown(context);
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 100.h, bottom: 11.v),
                                          child: Text("lbl_vendors".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeLatoWhiteA700))
                                    ]),
                                SizedBox(height: 27.v),
                                _buildRequestSection(context),
                                SizedBox(height: 41.v),
                                _buildRequestSection1(context),
                                SizedBox(height: 41.v)
                              ]))))));
    });
  }

  /// Section Widget
  Widget _buildRequestSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse437x37,
              height: 37.adaptSize,
              width: 37.adaptSize,
              radius: BorderRadius.circular(18.h)),
          Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_rahul_krishna".tr,
                        style: CustomTextStyles.bodyLargeLatoBluegray900),
                    Text("lbl_ryan_services".tr,
                        style: CustomTextStyles.bodyLargeLatoWhiteA700)
                  ])),
          Spacer(),
          CustomElevatedButton(
              height: 28.v,
              width: 115.h,
              text: "lbl_request".tr,
              margin: EdgeInsets.only(top: 10.v),
              buttonStyle: CustomButtonStyles.outlineBlack,
              buttonTextStyle: CustomTextStyles.bodyLargeLato,
              onPressed: () {
                onTapRequest(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildRequestSection1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse437x37,
              height: 37.adaptSize,
              width: 37.adaptSize,
              radius: BorderRadius.circular(18.h),
              margin: EdgeInsets.only(bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 13.h, bottom: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_rahul_krishna".tr,
                        style: CustomTextStyles.bodyLargeLatoBluegray900),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text("lbl_ryan_services".tr,
                            style: CustomTextStyles.bodyLargeLatoWhiteA700))
                  ])),
          Spacer(),
          CustomElevatedButton(
              height: 28.v,
              width: 115.h,
              text: "lbl_request".tr,
              margin: EdgeInsets.only(top: 12.v),
              buttonStyle: CustomButtonStyles.outlineBlack,
              buttonTextStyle: CustomTextStyles.bodyLargeLato)
        ]));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [BikePageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapImgArrowDown(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => BikePageBottomsheet.builder(context),
        isScrollControlled: true);
  }

  /// Navigates to the requestedPageNbikeScreen when the action is triggered.
  onTapRequest(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.requestedPageNbikeScreen,
    );
  }
}
