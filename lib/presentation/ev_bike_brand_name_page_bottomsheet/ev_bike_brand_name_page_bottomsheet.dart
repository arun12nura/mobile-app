import '../ev_bike_brand_name_page_bottomsheet/widgets/evbikebrandnamepage_item_widget.dart';
import 'bloc/ev_bike_brand_name_page_bloc.dart';
import 'models/ev_bike_brand_name_page_model.dart';
import 'models/evbikebrandnamepage_item_model.dart';
import 'package:dos/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EvBikeBrandNamePageBottomsheet extends StatelessWidget {
  const EvBikeBrandNamePageBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EvBikeBrandNamePageBloc>(
      create: (context) => EvBikeBrandNamePageBloc(EvBikeBrandNamePageState(
        evBikeBrandNamePageModelObj: EvBikeBrandNamePageModel(),
      ))
        ..add(EvBikeBrandNamePageInitialEvent()),
      child: EvBikeBrandNamePageBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.gradientTealEToTealE.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6155x335,
            height: 155.v,
            width: 335.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(32.h),
            ),
          ),
          SizedBox(height: 13.v),
          _buildEvBikeBrandNamePage(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEvBikeBrandNamePage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocSelector<EvBikeBrandNamePageBloc, EvBikeBrandNamePageState,
          EvBikeBrandNamePageModel?>(
        selector: (state) => state.evBikeBrandNamePageModelObj,
        builder: (context, evBikeBrandNamePageModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: evBikeBrandNamePageModelObj
                    ?.evbikebrandnamepageItemList.length ??
                0,
            itemBuilder: (context, index) {
              EvbikebrandnamepageItemModel model = evBikeBrandNamePageModelObj
                      ?.evbikebrandnamepageItemList[index] ??
                  EvbikebrandnamepageItemModel();
              return EvbikebrandnamepageItemWidget(
                model,
                onTapRadioGroup: (value) {
                  context.read<EvBikeBrandNamePageBloc>().add(
                      EvbikebrandnamepageItemEvent(
                          index: index, radioGroup: value));
                },
                onTapRadioGroup1: (value) {
                  context.read<EvBikeBrandNamePageBloc>().add(
                      EvbikebrandnamepageItemEvent(
                          index: index, radioGroup1: value));
                },
              );
            },
          );
        },
      ),
    );
  }
}
