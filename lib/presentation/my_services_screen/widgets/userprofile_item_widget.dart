import 'package:dosvendor/core/app_export.dart';
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
        horizontal: 18.h,
        vertical: 37.v,
      ),
      decoration: AppDecoration.outlineBlack90002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle33110x110,
            height: 110.adaptSize,
            width: 110.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 11.v,
              bottom: 35.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 12.v,
                      width: 18.h,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text(
                        "Swift ",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                    children: [
                      Text(
                        "z",
                        style: CustomTextStyles
                            .bodyMediumLibreBarcode39ExtendedBlack90002,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "Dzire LXi 2019",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBug,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "Speedometer ",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
