import 'package:dosvendor/core/app_export.dart';
import 'package:dosvendor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileBottomsheet extends StatelessWidget {
  const ProfileBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 111.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: CustomElevatedButton(
        height: 32.v,
        text: "Home",
        margin: EdgeInsets.only(right: 29.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 11.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 20.v,
            width: 18.h,
          ),
        ),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: CustomTextStyles.titleLargeBlack900,
      ),
    );
  }
}
