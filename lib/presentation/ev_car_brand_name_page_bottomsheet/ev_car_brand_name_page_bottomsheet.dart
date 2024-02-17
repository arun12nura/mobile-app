import '../ev_car_brand_name_page_bottomsheet/widgets/carbrandselector_item_widget.dart';import 'controller/ev_car_brand_name_page_controller.dart';import 'models/carbrandselector_item_model.dart';import 'package:dos/core/app_export.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';import 'package:dos/presentation/car_page_bottomsheet/controller/car_page_controller.dart';
// ignore_for_file: must_be_immutable
class EvCarBrandNamePageBottomsheet extends StatelessWidget {EvCarBrandNamePageBottomsheet(this.controller, {Key? key}) : super(key: key);

EvCarBrandNamePageController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildCarBrandSelector()])); } 
/// Section Widget
Widget _buildCarBrandSelector() { return Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.evCarBrandNamePageModelObj.value.carbrandselectorItemList.value.length, itemBuilder: (context, index) {CarbrandselectorItemModel model = controller.evCarBrandNamePageModelObj.value.carbrandselectorItemList.value[index]; return CarbrandselectorItemWidget(model, onTapSelector: () {onTapSelector();});}))); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [CarPageBottomsheet] widget.
///
/// The bottom sheet is controlled by the [CarPageController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapSelector() { Get.bottomSheet(CarPageBottomsheet(Get.put(CarPageController(),),),isScrollControlled: true,); } 
 }
