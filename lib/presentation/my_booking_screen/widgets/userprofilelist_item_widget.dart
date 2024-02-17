import '../models/userprofilelist_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outlineBlack900011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder40,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: userprofilelistItemModelObj?.lenovo,
              height: 95.v,
              width: 110.h,
              radius: BorderRadius.circular(
                16.h,
              ),
              margin: EdgeInsets.only(
                top: 24.v,
                bottom: 23.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 33.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: userprofilelistItemModelObj?.lenovoImage,
                        height: 8.v,
                        width: 18.h,
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 4.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          userprofilelistItemModelObj.lenovoText!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            userprofilelistItemModelObj.zText!,
                            style: CustomTextStyles
                                .bodyMediumLibreBarcode39Extended,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            userprofilelistItemModelObj.ideapadText!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: userprofilelistItemModelObj?.noWarrantyImage,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 9.h,
                          top: 2.v,
                        ),
                        child: Text(
                          userprofilelistItemModelObj.noWarrantyText!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: userprofilelistItemModelObj?.keyboardImage,
                          height: 10.v,
                          width: 12.h,
                          margin: EdgeInsets.only(bottom: 4.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            userprofilelistItemModelObj.keyboardText!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 19.v,
                      width: 97.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 18.v,
                              width: 97.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 3.v,
                              ),
                              decoration: AppDecoration.fillTeal100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: CustomImageView(
                                imagePath:
                                    userprofilelistItemModelObj?.checkmarkImage,
                                height: 11.v,
                                width: 16.h,
                                alignment: Alignment.bottomLeft,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: Text(
                                userprofilelistItemModelObj.acceptedText!,
                                style: CustomTextStyles.bodyMediumGray600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
