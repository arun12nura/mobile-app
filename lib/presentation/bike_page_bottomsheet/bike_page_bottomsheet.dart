import 'bloc/bike_page_bloc.dart';
import 'models/bike_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/core/utils/validation_functions.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BikePageBottomsheet extends StatelessWidget {
  const BikePageBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BikePageBloc>(
        create: (context) =>
            BikePageBloc(BikePageState(bikePageModelObj: BikePageModel()))
              ..add(BikePageInitialEvent()),
        child: BikePageBottomsheet());
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
          SizedBox(height: 20.v),
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
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 8.h),
              child: BlocSelector<BikePageBloc, BikePageState,
                      TextEditingController?>(
                  selector: (state) => state.nameController,
                  builder: (context, nameController) {
                    return CustomTextFormField(
                        controller: nameController,
                        hintText: "lbl_brand_name".tr,
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 14.v, 5.h, 14.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSettingsBlack90001,
                                height: 20.v,
                                width: 24.h)),
                        prefixConstraints: BoxConstraints(maxHeight: 50.v),
                        validator: (value) {
                          if (!isText(value)) {
                            return "err_msg_please_enter_valid_text".tr;
                          }
                          return null;
                        },
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlackTL251,
                        fillColor: appTheme.blueGray10068);
                  })),
          SizedBox(height: 11.v),
          _buildModelNameSection(context),
          SizedBox(height: 11.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 8.h),
              child: BlocSelector<BikePageBloc, BikePageState,
                      TextEditingController?>(
                  selector: (state) => state.issuesController,
                  builder: (context, issuesController) {
                    return CustomTextFormField(
                        controller: issuesController,
                        hintText: "lbl_issues".tr,
                        textInputAction: TextInputAction.done,
                        prefix: Padding(
                            padding:
                                EdgeInsets.fromLTRB(18.h, 16.v, 30.h, 16.v),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize),
                              CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 12.v,
                                  width: 10.h,
                                  margin: EdgeInsets.fromLTRB(
                                      22.h, 16.v, 9.889999.h, 16.v))
                            ])),
                        prefixConstraints: BoxConstraints(maxHeight: 50.v));
                  })),
          SizedBox(height: 81.v),
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
        child: BlocSelector<BikePageBloc, BikePageState, String?>(
            selector: (state) => state.radioGroup,
            builder: (context, radioGroup) {
              return CustomRadioButton(
                  text: "lbl_ev".tr,
                  value: "lbl_ev".tr,
                  groupValue: radioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    context
                        .read<BikePageBloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildModelNameSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack900011
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("lbl_z".tr,
                  style: CustomTextStyles.bodyLargeLibreBarcode39Extended)),
          Padding(
              padding: EdgeInsets.only(left: 6.h, top: 1.v),
              child:
                  Text("lbl_model_name".tr, style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Navigates to the nBikeVendorDetailsScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.nBikeVendorDetailsScreen,
    );
  }
}
