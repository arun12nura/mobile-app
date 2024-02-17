import '../laptop_brand_name_page_one_bottomsheet/widgets/selector_item_widget.dart';
import 'controller/laptop_brand_name_page_one_controller.dart';
import 'models/selector_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

class LaptopBrandNamePageOneBottomsheet extends StatelessWidget {
  LaptopBrandNamePageOneBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LaptopBrandNamePageOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.gradientTealEToTealE.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage155x335,
            height: 155.v,
            width: 335.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(32.h),
            ),
          ),
          SizedBox(height: 20.v),
          _buildSelector(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelector() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller.laptopBrandNamePageOneModelObj.value
              .selectorItemList.value.length,
          itemBuilder: (context, index) {
            SelectorItemModel model = controller.laptopBrandNamePageOneModelObj
                .value.selectorItemList.value[index];
            return SelectorItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
