// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'carbrandselector_item_model.dart';

/// This class defines the variables used in the [ev_car_brand_name_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class EvCarBrandNamePageModel extends Equatable {
  EvCarBrandNamePageModel({this.carbrandselectorItemList = const []}) {}

  List<CarbrandselectorItemModel> carbrandselectorItemList;

  EvCarBrandNamePageModel copyWith(
      {List<CarbrandselectorItemModel>? carbrandselectorItemList}) {
    return EvCarBrandNamePageModel(
      carbrandselectorItemList:
          carbrandselectorItemList ?? this.carbrandselectorItemList,
    );
  }

  @override
  List<Object?> get props => [carbrandselectorItemList];
}
