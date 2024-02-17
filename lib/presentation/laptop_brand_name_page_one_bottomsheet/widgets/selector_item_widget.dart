import '../controller/laptop_brand_name_page_one_controller.dart';
import '../models/selector_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectorItemWidget extends StatelessWidget {
  SelectorItemWidget(
    this.selectorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectorItemModel selectorItemModelObj;

  var controller = Get.find<LaptopBrandNamePageOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.6,
          child: Obx(
            () => CustomRadioButton(
              text: "lbl_laptop".tr,
              value: "lbl_laptop".tr,
              groupValue: selectorItemModelObj.radioGroup!.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                selectorItemModelObj.radioGroup!.value = value;
              },
            ),
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Obx(
            () => Padding(
              padding: EdgeInsets.only(left: 80.h),
              child: CustomRadioButton(
                text: "lbl_computer".tr,
                value: "lbl_computer".tr,
                groupValue: selectorItemModelObj.radioGroup1!.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  selectorItemModelObj.radioGroup1!.value = value;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
