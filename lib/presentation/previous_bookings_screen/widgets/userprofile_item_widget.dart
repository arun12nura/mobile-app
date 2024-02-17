import '../models/userprofile_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

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
            imagePath: userprofileItemModelObj?.userImage,
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
                  imagePath: userprofileItemModelObj?.settingsImage,
                  height: 8.v,
                  width: 14.h,
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    userprofileItemModelObj.text1!,
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
                  userprofileItemModelObj.text2!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  userprofileItemModelObj.text3!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                Text(
                  userprofileItemModelObj.text4!,
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
