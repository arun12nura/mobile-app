import 'bloc/ev_bike_page_bloc.dart';
import 'models/ev_bike_page_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:dos/core/utils/validation_functions.dart';
import 'package:dos/widgets/custom_elevated_button.dart';
import 'package:dos/widgets/custom_radio_button.dart';
import 'package:dos/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EvBikePageBottomsheet extends StatelessWidget {
  const EvBikePageBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<EvBikePageBloc>(
        create: (context) => EvBikePageBloc(
            EvBikePageState(evBikePageModelObj: EvBikePageModel()))
          ..add(EvBikePageInitialEvent()),
        child: EvBikePageBottomsheet());
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
          _buildRadioGroupSelector(context),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 8.h),
              child: BlocSelector<EvBikePageBloc, EvBikePageState,
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
          _buildModelNameRow(context),
          SizedBox(height: 11.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 8.h),
              child: BlocSelector<EvBikePageBloc, EvBikePageState,
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
  Widget _buildRadioGroupSelector(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 32.h, right: 87.h),
            child: BlocBuilder<EvBikePageBloc, EvBikePageState>(
                builder: (context, state) {
              return state.evBikePageModelObj!.radioList.isNotEmpty
                  ? Row(children: [
                      CustomRadioButton(
                          text: "lbl_normal".tr,
                          value: state.evBikePageModelObj?.radioList[0] ?? "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            context
                                .read<EvBikePageBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 78.h),
                          child: CustomRadioButton(
                              text: "lbl_ev".tr,
                              value:
                                  state.evBikePageModelObj?.radioList[1] ?? "",
                              groupValue: state.radioGroup,
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              onChange: (value) {
                                context
                                    .read<EvBikePageBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              }))
                    ])
                  : Container();
            })));
  }

  /// Section Widget
  Widget _buildModelNameRow(BuildContext context) {
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

  /// Navigates to the evBikeVendorDetailsePageScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.evBikeVendorDetailsePageScreen,
    );
  }
}
