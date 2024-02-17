import '../models/evbikebrandnamepage_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EvbikebrandnamepageItemWidget extends StatelessWidget {
  EvbikebrandnamepageItemWidget(
    this.evbikebrandnamepageItemModelObj, {
    Key? key,
    this.onTapRadioGroup,
    this.onTapRadioGroup1,
  }) : super(
          key: key,
        );

  EvbikebrandnamepageItemModel evbikebrandnamepageItemModelObj;

  Function(String)? onTapRadioGroup;

  Function(String)? onTapRadioGroup1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomRadioButton(
            text: "lbl_normal".tr,
            value: "lbl_normal".tr,
            groupValue: evbikebrandnamepageItemModelObj.radioGroup!,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              onTapRadioGroup?.call(value);
            },
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Padding(
            padding: EdgeInsets.only(left: 78.h),
            child: CustomRadioButton(
              text: "lbl_ev".tr,
              value: "lbl_ev".tr,
              groupValue: evbikebrandnamepageItemModelObj.radioGroup1!,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                onTapRadioGroup1?.call(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
