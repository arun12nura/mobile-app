// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'selector_item_model.dart';

/// This class defines the variables used in the [laptop_brand_name_page_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class LaptopBrandNamePageOneModel extends Equatable {
  LaptopBrandNamePageOneModel({this.selectorItemList = const []}) {}

  List<SelectorItemModel> selectorItemList;

  LaptopBrandNamePageOneModel copyWith(
      {List<SelectorItemModel>? selectorItemList}) {
    return LaptopBrandNamePageOneModel(
      selectorItemList: selectorItemList ?? this.selectorItemList,
    );
  }

  @override
  List<Object?> get props => [selectorItemList];
}
