import '../my_booking_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/my_booking_bloc.dart';
import 'models/my_booking_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyBookingBloc>(
        create: (context) =>
            MyBookingBloc(MyBookingState(myBookingModelObj: MyBookingModel()))
              ..add(MyBookingInitialEvent()),
        child: MyBookingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black90001.withOpacity(0.25),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(0, 4))
                    ],
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.teal400,
                          appTheme.teal20068,
                          appTheme.whiteA700.withOpacity(0)
                        ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 9.h, vertical: 14.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowDownBlack90001,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowDown(context);
                          }),
                      _buildMyBookingsRow(context),
                      SizedBox(height: 12.v),
                      _buildUserProfileList(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildMyBookingsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 15.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 2.v),
              child: Text("lbl_my_bookings".tr,
                  style: CustomTextStyles.titleLargeMedium22)),
          CustomImageView(
              imagePath: ImageConstant.imgPlay,
              height: 37.adaptSize,
              width: 37.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: BlocSelector<MyBookingBloc, MyBookingState, MyBookingModel?>(
            selector: (state) => state.myBookingModelObj,
            builder: (context, myBookingModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 6.v);
                  },
                  itemCount:
                      myBookingModelObj?.userprofilelistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    UserprofilelistItemModel model =
                        myBookingModelObj?.userprofilelistItemList[index] ??
                            UserprofilelistItemModel();
                    return UserprofilelistItemWidget(model,
                        onTapUserProfile: () {
                      onTapUserProfile(context);
                    });
                  });
            }));
  }

  /// Navigates to the acceptedStatusScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.acceptedStatusScreen);
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapImgArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePageScreen,
    );
  }
}
