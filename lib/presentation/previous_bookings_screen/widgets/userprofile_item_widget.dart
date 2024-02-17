import '../controller/previous_bookings_controller.dart';
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

  var controller = Get.find<PreviousBookingsController>();

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
          Obx(
            () => CustomImageView(
              imagePath: userprofileItemModelObj.userImage!.value,
              height: 79.v,
              width: 86.h,
              radius: BorderRadius.circular(
                16.h,
              ),
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
                Obx(
                  () => CustomImageView(
                    imagePath: userprofileItemModelObj.settingsImage!.value,
                    height: 8.v,
                    width: 14.h,
                  ),
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () => Text(
                      userprofileItemModelObj.text1!.value,
                      style: CustomTextStyles.bodyMediumLibreBarcode39Extended,
                    ),
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
                Obx(
                  () => Text(
                    userprofileItemModelObj.text2!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.text3!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.text4!.value,
                    style: theme.textTheme.bodySmall,
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
