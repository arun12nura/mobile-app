import '../controller/ev_car_brand_name_page_controller.dart';
import '../models/carbrandselector_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarbrandselectorItemWidget extends StatelessWidget {
  CarbrandselectorItemWidget(
    this.carbrandselectorItemModelObj, {
    Key? key,
    this.onTapSelector,
  }) : super(
          key: key,
        );

  CarbrandselectorItemModel carbrandselectorItemModelObj;

  var controller = Get.find<EvCarBrandNamePageController>();

  VoidCallback? onTapSelector;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSelector!.call();
      },
      child: Row(
        children: [
          Opacity(
            opacity: 0.6,
            child: Obx(
              () => CustomRadioButton(
                text: "lbl_normal".tr,
                value: "lbl_normal".tr,
                groupValue: carbrandselectorItemModelObj.radioGroup!.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  carbrandselectorItemModelObj.radioGroup!.value = value;
                },
              ),
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: Obx(
              () => Padding(
                padding: EdgeInsets.only(left: 78.h),
                child: CustomRadioButton(
                  text: "lbl_ev".tr,
                  value: "lbl_ev".tr,
                  groupValue: carbrandselectorItemModelObj.radioGroup1!.value,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    carbrandselectorItemModelObj.radioGroup1!.value = value;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
