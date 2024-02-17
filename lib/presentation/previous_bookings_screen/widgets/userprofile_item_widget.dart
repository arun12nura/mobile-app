import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineBlack900011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3391x110,
            height: 79.v,
            width: 86.h,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 10.v,
              bottom: 27.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 8.v,
                  width: 14.h,
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "z",
                    style: CustomTextStyles.bodyMediumLibreBarcode39Extended,
                  ),
                ),
                SizedBox(height: 3.v),
                CustomImageView(
                  imagePath: ImageConstant.imgUpload,
                  height: 8.v,
                  width: 9.h,
                  margin: EdgeInsets.only(left: 2.h),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 8.v,
              bottom: 20.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Swift ",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Dzire LXi 2019",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Speedometer ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
