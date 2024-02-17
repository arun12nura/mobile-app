import 'bloc/laptop_brand_name_page_three_bloc.dart';
import 'models/laptop_brand_name_page_three_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';

class LaptopBrandNamePageThreeBottomsheet extends StatelessWidget {
  const LaptopBrandNamePageThreeBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LaptopBrandNamePageThreeBloc>(
        create: (context) => LaptopBrandNamePageThreeBloc(
            LaptopBrandNamePageThreeState(
                laptopBrandNamePageThreeModelObj:
                    LaptopBrandNamePageThreeModel()))
          ..add(LaptopBrandNamePageThreeInitialEvent()),
        child: LaptopBrandNamePageThreeBottomsheet());
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
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 34.h),
        child: BlocBuilder<LaptopBrandNamePageThreeBloc,
            LaptopBrandNamePageThreeState>(builder: (context, state) {
          return state.laptopBrandNamePageThreeModelObj!.radioList.isNotEmpty
              ? Row(children: [
                  CustomRadioButton(
                      text: "lbl_laptop".tr,
                      value: state
                              .laptopBrandNamePageThreeModelObj?.radioList[0] ??
                          "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<LaptopBrandNamePageThreeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 80.h),
                      child: CustomRadioButton(
                          text: "lbl_computer".tr,
                          value: state.laptopBrandNamePageThreeModelObj
                                  ?.radioList[1] ??
                              "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<LaptopBrandNamePageThreeBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }))
                ])
              : Container();
        }));
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
                  child: BlocBuilder<LaptopBrandNamePageThreeBloc,
                      LaptopBrandNamePageThreeState>(builder: (context, state) {
                    return state.laptopBrandNamePageThreeModelObj!.radioList1
                            .isNotEmpty
                        ? Column(children: [
                            CustomRadioButton(
                                text: "msg_company_warranty".tr,
                                value: state.laptopBrandNamePageThreeModelObj
                                        ?.radioList1[0] ??
                                    "",
                                groupValue: state.warrantyDetails,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                textStyle: CustomTextStyles.bodyLargeWhiteA700,
                                onChange: (value) {
                                  context
                                      .read<LaptopBrandNamePageThreeBloc>()
                                      .add(ChangeRadioButton1Event(
                                          value: value));
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 18.v, right: 56.h),
                                child: CustomRadioButton(
                                    text: "lbl_no_warranty2".tr,
                                    value: state
                                            .laptopBrandNamePageThreeModelObj
                                            ?.radioList1[1] ??
                                        "",
                                    groupValue: state.warrantyDetails,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle:
                                        CustomTextStyles.bodyLargeWhiteA700,
                                    onChange: (value) {
                                      context
                                          .read<LaptopBrandNamePageThreeBloc>()
                                          .add(ChangeRadioButton1Event(
                                              value: value));
                                    }))
                          ])
                        : Container();
                  })),
              SizedBox(height: 125.v),
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
