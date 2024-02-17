import '../ev_car_brand_name_page_bottomsheet/widgets/carbrandselector_item_widget.dart';import 'package:dos/core/app_export.dart';import 'package:flutter/material.dart';import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';class EvCarBrandNamePageBottomsheet extends StatelessWidget {const EvCarBrandNamePageBottomsheet({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(12.h), decoration: AppDecoration.gradientTealEToTealE.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgRectangle4155x335, height: 155.v, width: 335.h, radius: BorderRadius.vertical(top: Radius.circular(32.h))), SizedBox(height: 20.v), _buildCarBrandSelector(context)])); } 
/// Section Widget
Widget _buildCarBrandSelector(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 2, itemBuilder: (context, index) {return CarbrandselectorItemWidget(onTapSelector: () {onTapSelector(context);});})); } 

/// Shows a modal bottom sheet with [CarPageBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSelector(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>CarPageBottomsheet(),isScrollControlled: true); } 
 }
