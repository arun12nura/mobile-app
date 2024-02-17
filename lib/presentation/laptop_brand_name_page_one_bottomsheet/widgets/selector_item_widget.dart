import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectorItemWidget extends StatelessWidget {
  SelectorItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomRadioButton(
            text: "Laptop",
            value: "Laptop",
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Padding(
            padding: EdgeInsets.only(left: 80.h),
            child: CustomRadioButton(
              text: "Computer",
              value: "Computer",
              groupValue: radioGroup1,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                radioGroup1 = value;
              },
            ),
          ),
        ),
      ],
    );
  }
}
