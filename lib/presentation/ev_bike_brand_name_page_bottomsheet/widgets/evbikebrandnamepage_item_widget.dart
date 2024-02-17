import '../controller/ev_bike_brand_name_page_controller.dart';
import '../models/evbikebrandnamepage_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EvbikebrandnamepageItemWidget extends StatelessWidget {
  EvbikebrandnamepageItemWidget(
    this.evbikebrandnamepageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EvbikebrandnamepageItemModel evbikebrandnamepageItemModelObj;

  var controller = Get.find<EvBikeBrandNamePageController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(
          opacity: 0.6,
          child: Obx(
            () => CustomRadioButton(
              text: "lbl_normal".tr,
              value: "lbl_normal".tr,
              groupValue: evbikebrandnamepageItemModelObj.radioGroup!.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                evbikebrandnamepageItemModelObj.radioGroup!.value = value;
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
                groupValue: evbikebrandnamepageItemModelObj.radioGroup1!.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  evbikebrandnamepageItemModelObj.radioGroup1!.value = value;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
