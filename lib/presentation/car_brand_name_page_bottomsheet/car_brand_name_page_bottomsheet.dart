import 'bloc/car_brand_name_page_bloc.dart';
import 'models/car_brand_name_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:dos/presentation/car_page_bottomsheet/car_page_bottomsheet.dart';

class CarBrandNamePageBottomsheet extends StatelessWidget {
  const CarBrandNamePageBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CarBrandNamePageBloc>(
        create: (context) => CarBrandNamePageBloc(CarBrandNamePageState(
            carBrandNamePageModelObj: CarBrandNamePageModel()))
          ..add(CarBrandNamePageInitialEvent()),
        child: CarBrandNamePageBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        decoration: AppDecoration.gradientTealEToTealE
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL32),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle4155x335,
              height: 155.v,
              width: 335.h,
              radius: BorderRadius.vertical(top: Radius.circular(32.h))),
          SizedBox(height: 20.v),
          _buildRadioGroupSelector(context),
          SizedBox(height: 17.v),
          _buildBrandNameSection(context)
        ]));
  }

  /// Section Widget
  Widget _buildRadioGroupSelector(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 32.h, right: 88.h),
            child: BlocBuilder<CarBrandNamePageBloc, CarBrandNamePageState>(
                builder: (context, state) {
              return state.carBrandNamePageModelObj!.radioList.isNotEmpty
                  ? Row(children: [
                      CustomRadioButton(
                          text: "lbl_normal".tr,
                          value: state.carBrandNamePageModelObj?.radioList[0] ??
                              "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<CarBrandNamePageBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 78.h),
                          child: CustomRadioButton(
                              text: "lbl_ev".tr,
                              value: state
                                      .carBrandNamePageModelObj?.radioList[1] ??
                                  "",
                              groupValue: state.radioGroup,
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              onChange: (value) {
                                context
                                    .read<CarBrandNamePageBloc>()
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
        padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack900013
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 20.v,
                        width: 24.h),
                    Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text("lbl_brand_name".tr,
                            style: theme.textTheme.bodyMedium))
                  ])),
              SizedBox(height: 25.v),
              Padding(
                  padding: EdgeInsets.only(right: 106.h),
                  child:
                      BlocBuilder<CarBrandNamePageBloc, CarBrandNamePageState>(
                          builder: (context, state) {
                    return state.carBrandNamePageModelObj!.radioList1.isNotEmpty
                        ? Column(children: [
                            Padding(
                                padding: EdgeInsets.only(right: 64.h),
                                child: CustomRadioButton(
                                    text: "lbl_nexa".tr,
                                    value: state.carBrandNamePageModelObj
                                            ?.radioList1[0] ??
                                        "",
                                    groupValue: state.radioGroup1,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle:
                                        CustomTextStyles.bodyLargeWhiteA700,
                                    onChange: (value) {
                                      context.read<CarBrandNamePageBloc>().add(
                                          ChangeRadioButton1Event(
                                              value: value));
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 18.v),
                                child: CustomRadioButton(
                                    text: "lbl_maruti_suzuki".tr,
                                    value: state.carBrandNamePageModelObj
                                            ?.radioList1[1] ??
                                        "",
                                    groupValue: state.radioGroup1,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle:
                                        CustomTextStyles.bodyLargeWhiteA700,
                                    onChange: (value) {
                                      context.read<CarBrandNamePageBloc>().add(
                                          ChangeRadioButton1Event(
                                              value: value));
                                    })),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 3.h, top: 18.v, right: 67.h),
                                child: CustomRadioButton(
                                    text: "lbl_tata".tr,
                                    value: state.carBrandNamePageModelObj
                                            ?.radioList1[2] ??
                                        "",
                                    groupValue: state.radioGroup1,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    textStyle:
                                        CustomTextStyles.bodyLargeWhiteA700,
                                    onChange: (value) {
                                      context.read<CarBrandNamePageBloc>().add(
                                          ChangeRadioButton1Event(
                                              value: value));
                                    }))
                          ])
                        : Container();
                  })),
              SizedBox(height: 83.v),
              CustomElevatedButton(
                  width: 88.h,
                  text: "lbl_submit".tr,
                  onPressed: () {
                    onTapSubmit(context);
                  },
                  alignment: Alignment.center),
              SizedBox(height: 5.v)
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
