import 'bloc/laptop_issue_page_bloc.dart';
import 'models/laptop_issue_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';

class LaptopIssuePageBottomsheet extends StatelessWidget {
  const LaptopIssuePageBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LaptopIssuePageBloc>(
        create: (context) => LaptopIssuePageBloc(LaptopIssuePageState(
            laptopIssuePageModelObj: LaptopIssuePageModel()))
          ..add(LaptopIssuePageInitialEvent()),
        child: LaptopIssuePageBottomsheet());
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
              imagePath: ImageConstant.imgImage155x335,
              height: 155.v,
              width: 335.h,
              radius: BorderRadius.vertical(top: Radius.circular(32.h))),
          SizedBox(height: 20.v),
          _buildRadioGroupSelector(context),
          SizedBox(height: 16.v),
          _buildIssuesRadio(context),
          SizedBox(height: 7.v),
          _buildRowFrameOne(context),
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
  Widget _buildRadioGroupSelector(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: BlocBuilder<LaptopIssuePageBloc, LaptopIssuePageState>(
            builder: (context, state) {
          return state.laptopIssuePageModelObj!.radioList.isNotEmpty
              ? Row(children: [
                  CustomRadioButton(
                      text: "lbl_laptop".tr,
                      value: state.laptopIssuePageModelObj?.radioList[0] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<LaptopIssuePageBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 80.h),
                      child: CustomRadioButton(
                          text: "lbl_computer".tr,
                          value:
                              state.laptopIssuePageModelObj?.radioList[1] ?? "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<LaptopIssuePageBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }))
                ])
              : Container();
        }));
  }

  /// Section Widget
  Widget _buildIssuesRadio(BuildContext context) {
    return BlocSelector<LaptopIssuePageBloc, LaptopIssuePageState, String?>(
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
                        .read<LaptopIssuePageBloc>()
                        .add(ChangeRadioButton1Event(value: value));
                  }));
        });
  }

  /// Section Widget
  Widget _buildRowFrameOne(BuildContext context) {
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
  /// The bottom sheet is built using the [LaptopPageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapSubmit(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => LaptopPageBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
