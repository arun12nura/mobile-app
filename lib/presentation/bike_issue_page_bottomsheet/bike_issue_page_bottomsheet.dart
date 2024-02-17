import 'bloc/bike_issue_page_bloc.dart';
import 'models/bike_issue_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/bike_page_bottomsheet/bike_page_bottomsheet.dart';

class BikeIssuePageBottomsheet extends StatelessWidget {
  const BikeIssuePageBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BikeIssuePageBloc>(
        create: (context) => BikeIssuePageBloc(
            BikeIssuePageState(bikeIssuePageModelObj: BikeIssuePageModel()))
          ..add(BikeIssuePageInitialEvent()),
        child: BikeIssuePageBottomsheet());
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
              imagePath: ImageConstant.imgRectangle6155x335,
              height: 155.v,
              width: 335.h,
              radius: BorderRadius.vertical(top: Radius.circular(32.h))),
          SizedBox(height: 18.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 32.h, right: 48.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                            opacity: 0.6,
                            child: SizedBox(
                                width: 87.h,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEye,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("lbl_normal".tr,
                                              style: theme.textTheme.bodyLarge))
                                    ]))),
                        _buildRadioButtonSection(context)
                      ]))),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 8.h),
              child: BlocSelector<BikeIssuePageBloc, BikeIssuePageState,
                      TextEditingController?>(
                  selector: (state) => state.labelThreeController,
                  builder: (context, labelThreeController) {
                    return CustomTextFormField(
                        controller: labelThreeController,
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
  Widget _buildRadioButtonSection(BuildContext context) {
    return Opacity(
        opacity: 0.6,
        child: BlocSelector<BikeIssuePageBloc, BikeIssuePageState, String?>(
            selector: (state) => state.radioGroup,
            builder: (context, radioGroup) {
              return CustomRadioButton(
                  text: "lbl_ev".tr,
                  value: "lbl_ev".tr,
                  groupValue: radioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    context
                        .read<BikeIssuePageBloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  });
            }));
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
  /// The bottom sheet is built using the [BikePageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapSubmit(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => BikePageBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
