import 'bloc/laptop_brand_name_page_two_bloc.dart';
import 'models/laptop_brand_name_page_two_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/computer_page_bottomsheet/computer_page_bottomsheet.dart';

class LaptopBrandNamePageTwoBottomsheet extends StatelessWidget {
  const LaptopBrandNamePageTwoBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LaptopBrandNamePageTwoBloc>(
        create: (context) => LaptopBrandNamePageTwoBloc(
            LaptopBrandNamePageTwoState(
                laptopBrandNamePageTwoModelObj: LaptopBrandNamePageTwoModel()))
          ..add(LaptopBrandNamePageTwoInitialEvent()),
        child: LaptopBrandNamePageTwoBottomsheet());
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
          _buildSelectorSection(context),
          SizedBox(height: 18.v),
          _buildBrandNameSection(context)
        ]));
  }

  /// Section Widget
  Widget _buildSelectorSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 45.h),
            child: BlocBuilder<LaptopBrandNamePageTwoBloc,
                LaptopBrandNamePageTwoState>(builder: (context, state) {
              return state.laptopBrandNamePageTwoModelObj!.radioList.isNotEmpty
                  ? Row(children: [
                      CustomRadioButton(
                          text: "lbl_laptop".tr,
                          value: state.laptopBrandNamePageTwoModelObj
                                  ?.radioList[0] ??
                              "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<LaptopBrandNamePageTwoBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 80.h),
                          child: CustomRadioButton(
                              text: "lbl_computer".tr,
                              value: state.laptopBrandNamePageTwoModelObj
                                      ?.radioList[1] ??
                                  "",
                              groupValue: state.radioGroup,
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              onChange: (value) {
                                context
                                    .read<LaptopBrandNamePageTwoBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              }))
                    ])
                  : Container();
            })));
  }

  /// Section Widget
  Widget _buildBrandNameSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack900013
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgShield,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 6.h, top: 4.v),
                    child: Text("msg_warranty_details".tr,
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(left: 23.h, right: 57.h),
                  child: BlocBuilder<LaptopBrandNamePageTwoBloc,
                      LaptopBrandNamePageTwoState>(builder: (context, state) {
                    return state.laptopBrandNamePageTwoModelObj!.radioList1
                            .isNotEmpty
                        ? Column(children: [
                            CustomRadioButton(
                                text: "msg_company_warranty".tr,
                                value: state.laptopBrandNamePageTwoModelObj
                                        ?.radioList1[0] ??
                                    "",
                                groupValue: state.warrantyDetails,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                textStyle: CustomTextStyles.bodyLargeWhiteA700,
                                onChange: (value) {
                                  context
                                      .read<LaptopBrandNamePageTwoBloc>()
                                      .add(ChangeRadioButton1Event(
                                          value: value));
                                }),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 1.h, top: 13.v, right: 55.h),
                                child: CustomRadioButton(
                                    text: "lbl_no_warranty2".tr,
                                    value: state.laptopBrandNamePageTwoModelObj
                                            ?.radioList1[1] ??
                                        "",
                                    groupValue: state.warrantyDetails,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle:
                                        CustomTextStyles.bodyLargeWhiteA700,
                                    onChange: (value) {
                                      context
                                          .read<LaptopBrandNamePageTwoBloc>()
                                          .add(ChangeRadioButton1Event(
                                              value: value));
                                    }))
                          ])
                        : Container();
                  })),
              SizedBox(height: 130.v),
              CustomElevatedButton(
                  width: 88.h,
                  text: "lbl_submit".tr,
                  onPressed: () {
                    onTapSubmit(context);
                  },
                  alignment: Alignment.center),
              SizedBox(height: 6.v)
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
