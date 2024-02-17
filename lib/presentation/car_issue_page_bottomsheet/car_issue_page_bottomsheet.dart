import 'bloc/car_issue_page_bloc.dart';
import 'models/car_issue_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';

class CarIssuePageBottomsheet extends StatelessWidget {
  const CarIssuePageBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CarIssuePageBloc>(
        create: (context) => CarIssuePageBloc(
            CarIssuePageState(carIssuePageModelObj: CarIssuePageModel()))
          ..add(CarIssuePageInitialEvent()),
        child: CarIssuePageBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.gradientTealEToTealE
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL32),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle4155x335,
              height: 155.v,
              width: 335.h,
              radius: BorderRadius.vertical(top: Radius.circular(32.h))),
          SizedBox(height: 20.v),
          _buildRadioGroupSection(context),
          SizedBox(height: 16.v),
          _buildIssuesSection(context),
          SizedBox(height: 7.v),
          _buildFrameOneSection(context),
          SizedBox(height: 11.v),
          CustomElevatedButton(
              width: 88.h,
              text: "lbl_submit".tr,
              onPressed: () {
                onTapSubmit(context);
              }),
          SizedBox(height: 19.v)
        ]));
  }

  /// Section Widget
  Widget _buildRadioGroupSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 32.h, right: 88.h),
            child: BlocBuilder<CarIssuePageBloc, CarIssuePageState>(
                builder: (context, state) {
              return state.carIssuePageModelObj!.radioList.isNotEmpty
                  ? Row(children: [
                      CustomRadioButton(
                          text: "lbl_normal".tr,
                          value: state.carIssuePageModelObj?.radioList[0] ?? "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<CarIssuePageBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 78.h),
                          child: CustomRadioButton(
                              text: "lbl_ev".tr,
                              value: state.carIssuePageModelObj?.radioList[1] ??
                                  "",
                              groupValue: state.radioGroup,
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              onChange: (value) {
                                context
                                    .read<CarIssuePageBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              }))
                    ])
                  : Container();
            })));
  }

  /// Section Widget
  Widget _buildIssuesSection(BuildContext context) {
    return BlocSelector<CarIssuePageBloc, CarIssuePageState, String?>(
        selector: (state) => state.radioGroup1,
        builder: (context, radioGroup1) {
          return Padding(
              padding: EdgeInsets.only(left: 9.h, right: 8.h),
              child: CustomRadioButton(
                  text: "lbl_issues".tr,
                  value: "lbl_issues".tr,
                  groupValue: radioGroup1,
                  padding: EdgeInsets.fromLTRB(5.h, 15.v, 30.h, 15.v),
                  textStyle: theme.textTheme.bodyMedium,
                  onChange: (value) {
                    context
                        .read<CarIssuePageBloc>()
                        .add(ChangeRadioButton1Event(value: value));
                  }));
        });
  }

  /// Section Widget
  Widget _buildFrameOneSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack900011
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCameraGray900,
              height: 18.v,
              width: 22.h,
              margin: EdgeInsets.symmetric(vertical: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 3.h, top: 1.v),
              child: Text("lbl_upload_photo".tr,
                  style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [CarPageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapSubmit(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => CarPageBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
