import '../my_services_screen/widgets/userprofile_item_widget.dart';
import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/app_bar/appbar_leading_image.dart';
import 'package:dosvendor/widgets/app_bar/appbar_subtitle.dart';
import 'package:dosvendor/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/profile_lap_bottomsheet/profile_lap_bottomsheet.dart';

class MyServicesScreen extends StatelessWidget {
  const MyServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
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
                    margin: EdgeInsets.only(left: 12.h, right: 6.h),
                    padding: EdgeInsets.all(7.h),
                    decoration: AppDecoration.outlineBlack900022.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder40),
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 7.v);
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return UserprofileItemWidget();
                        })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 30.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlack90002,
            margin: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 8.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: AppbarSubtitle(
            text: "My Services", margin: EdgeInsets.only(left: 10.h)));
  }

  /// Shows a modal bottom sheet with [ProfileLapBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapArrowDown(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileLapBottomsheet(),
        isScrollControlled: true);
  }
}
