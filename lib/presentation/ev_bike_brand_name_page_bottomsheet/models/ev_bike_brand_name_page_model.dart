// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'evbikebrandnamepage_item_model.dart';

/// This class defines the variables used in the [ev_bike_brand_name_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class EvBikeBrandNamePageModel extends Equatable {
  EvBikeBrandNamePageModel({this.evbikebrandnamepageItemList = const []}) {}

  List<EvbikebrandnamepageItemModel> evbikebrandnamepageItemList;

  EvBikeBrandNamePageModel copyWith(
      {List<EvbikebrandnamepageItemModel>? evbikebrandnamepageItemList}) {
    return EvBikeBrandNamePageModel(
      evbikebrandnamepageItemList:
          evbikebrandnamepageItemList ?? this.evbikebrandnamepageItemList,
    );
  }

  @override
  List<Object?> get props => [evbikebrandnamepageItemList];
}
