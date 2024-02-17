import 'bloc/laptop_brand_name_page_bloc.dart';
import 'models/laptop_brand_name_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/laptop_page_bottomsheet/laptop_page_bottomsheet.dart';

class LaptopBrandNamePageBottomsheet extends StatelessWidget {
  const LaptopBrandNamePageBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LaptopBrandNamePageBloc>(
        create: (context) => LaptopBrandNamePageBloc(LaptopBrandNamePageState(
            laptopBrandNamePageModelObj: LaptopBrandNamePageModel()))
          ..add(LaptopBrandNamePageInitialEvent()),
        child: LaptopBrandNamePageBottomsheet());
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
          _buildSelectorRadioGroup(context),
          SizedBox(height: 18.v),
          _buildBrandNameColumn(context)
        ]));
  }

  /// Section Widget
  Widget _buildSelectorRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 34.h),
        child: BlocBuilder<LaptopBrandNamePageBloc, LaptopBrandNamePageState>(
            builder: (context, state) {
          return state.laptopBrandNamePageModelObj!.radioList.isNotEmpty
              ? Row(children: [
                  CustomRadioButton(
                      text: "lbl_laptop".tr,
                      value:
                          state.laptopBrandNamePageModelObj?.radioList[0] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<LaptopBrandNamePageBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 80.h),
                      child: CustomRadioButton(
                          text: "lbl_computer".tr,
                          value:
                              state.laptopBrandNamePageModelObj?.radioList[1] ??
                                  "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<LaptopBrandNamePageBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }))
                ])
              : Container();
        }));
  }

  /// Section Widget
  Widget _buildBrandNameColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineBlack900013
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgComputer,
                    height: 16.v,
                    width: 24.h,
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text("lbl_brand_name".tr,
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 24.h, right: 189.h),
                  child: BlocBuilder<LaptopBrandNamePageBloc,
                      LaptopBrandNamePageState>(builder: (context, state) {
                    return state
                            .laptopBrandNamePageModelObj!.radioList1.isNotEmpty
                        ? Column(children: [
                            Padding(
                                padding: EdgeInsets.only(right: 22.h),
                                child: CustomRadioButton(
                                    text: "lbl_hp".tr,
                                    value: state.laptopBrandNamePageModelObj
                                            ?.radioList1[0] ??
                                        "",
                                    groupValue: state.brandName,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle:
                                        CustomTextStyles.bodyLargeWhiteA700,
                                    onChange: (value) {
                                      context
                                          .read<LaptopBrandNamePageBloc>()
                                          .add(ChangeRadioButton1Event(
                                              value: value));
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 18.v),
                                child: CustomRadioButton(
                                    text: "lbl_asus".tr,
                                    value: state.laptopBrandNamePageModelObj
                                            ?.radioList1[1] ??
                                        "",
                                    groupValue: state.brandName,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle:
                                        CustomTextStyles.bodyLargeWhiteA700,
                                    onChange: (value) {
                                      context
                                          .read<LaptopBrandNamePageBloc>()
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
              SizedBox(height: 2.v)
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
