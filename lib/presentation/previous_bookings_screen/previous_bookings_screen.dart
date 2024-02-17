import '../previous_bookings_screen/widgets/userprofile_item_widget.dart';import 'controller/previous_bookings_controller.dart';import 'models/userprofile_item_model.dart';import 'package:dos/core/app_export.dart';import 'package:dos/widgets/app_bar/appbar_leading_image.dart';import 'package:dos/widgets/app_bar/appbar_subtitle.dart';import 'package:dos/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class PreviousBookingsScreen extends GetWidget<PreviousBookingsController> {const PreviousBookingsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, appBar: _buildAppBar(), body: Container(width: SizeUtils.width, height: SizeUtils.height, padding: EdgeInsets.only(top: 30.v), decoration: BoxDecoration(color: appTheme.whiteA700, gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.teal400.withOpacity(0.91), appTheme.teal20068, appTheme.whiteA700.withOpacity(0)])), child: Container(margin: EdgeInsets.only(left: 12.h, right: 6.h), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v), decoration: AppDecoration.outlineBlack90001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 9.v);}, itemCount: controller.previousBookingsModelObj.value.userprofileItemList.value.length, itemBuilder: (context, index) {UserprofileItemModel model = controller.previousBookingsModelObj.value.userprofileItemList.value[index]; return UserprofileItemWidget(model);})))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 30.v, leadingWidth: 28.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 8.v), onTap: () {onTapArrowDown();}), title: AppbarSubtitle(text: "msg_previous_bookings".tr, margin: EdgeInsets.only(left: 10.h))); } 
/// Navigates to the profilePageScreen when the action is triggered.
onTapArrowDown() { Get.toNamed(AppRoutes.profilePageScreen, ); } 
 }
