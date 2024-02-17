import 'bloc/laptop_issue_page_one_bloc.dart';
import 'models/laptop_issue_page_one_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/computer_page_bottomsheet/computer_page_bottomsheet.dart';

class LaptopIssuePageOneBottomsheet extends StatelessWidget {
  const LaptopIssuePageOneBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LaptopIssuePageOneBloc>(
        create: (context) => LaptopIssuePageOneBloc(LaptopIssuePageOneState(
            laptopIssuePageOneModelObj: LaptopIssuePageOneModel()))
          ..add(LaptopIssuePageOneInitialEvent()),
        child: LaptopIssuePageOneBottomsheet());
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
          SizedBox(height: 18.v),
          _buildRadioGroup(context),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 8.h),
              child: BlocSelector<LaptopIssuePageOneBloc,
                      LaptopIssuePageOneState, TextEditingController?>(
                  selector: (state) => state.issuesController,
                  builder: (context, issuesController) {
                    return CustomTextFormField(
                        controller: issuesController,
                        hintText: "lbl_issues".tr,
                        textInputAction: TextInputAction.done,
                        prefix: Padding(
                            padding: EdgeInsets.fromLTRB(
                                18.h, 14.920013.v, 30.h, 30.v),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 16.79.v,
                                  width: 18.h),
                              CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 11.19.v,
                                  width: 10.h,
                                  margin: EdgeInsets.fromLTRB(22.h, 20.519989.v,
                                      9.889999.h, 20.519989.v))
                            ])),
                        prefixConstraints: BoxConstraints(maxHeight: 185.v),
                        maxLines: 10,
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlackTL40);
                  })),
          SizedBox(height: 7.v),
          _buildFrameOne(context),
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
  Widget _buildRadioGroup(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 45.h),
            child: BlocBuilder<LaptopIssuePageOneBloc, LaptopIssuePageOneState>(
                builder: (context, state) {
              return state.laptopIssuePageOneModelObj!.radioList.isNotEmpty
                  ? Row(children: [
                      CustomRadioButton(
                          text: "lbl_laptop".tr,
                          value:
                              state.laptopIssuePageOneModelObj?.radioList[0] ??
                                  "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<LaptopIssuePageOneBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 80.h),
                          child: CustomRadioButton(
                              text: "lbl_computer".tr,
                              value: state.laptopIssuePageOneModelObj
                                      ?.radioList[1] ??
                                  "",
                              groupValue: state.radioGroup,
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              onChange: (value) {
                                context
                                    .read<LaptopIssuePageOneBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              }))
                    ])
                  : Container();
            })));
  }

  /// Section Widget
  Widget _buildFrameOne(BuildContext context) {
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
  /// The bottom sheet is built using the [ComputerPageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapSubmit(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ComputerPageBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
