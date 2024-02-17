import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EvbikebrandnamepageItemWidget extends StatelessWidget {
  EvbikebrandnamepageItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomRadioButton(
            text: "Normal",
            value: "Normal",
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
            padding: EdgeInsets.only(left: 78.h),
            child: CustomRadioButton(
              text: "Ev",
              value: "Ev",
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
