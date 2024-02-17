import '../models/selector_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectorItemWidget extends StatelessWidget {
  SelectorItemWidget(
    this.selectorItemModelObj, {
    Key? key,
    this.onTapRadioGroup,
    this.onTapRadioGroup1,
  }) : super(
          key: key,
        );

  SelectorItemModel selectorItemModelObj;

  Function(String)? onTapRadioGroup;

  Function(String)? onTapRadioGroup1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomRadioButton(
            text: "lbl_laptop".tr,
            value: "lbl_laptop".tr,
            groupValue: selectorItemModelObj.radioGroup!,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              onTapRadioGroup?.call(value);
            },
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Padding(
            padding: EdgeInsets.only(left: 80.h),
            child: CustomRadioButton(
              text: "lbl_computer".tr,
              value: "lbl_computer".tr,
              groupValue: selectorItemModelObj.radioGroup1!,
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
