// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [bike_brand_name_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class BikeBrandNamePageModel extends Equatable {
  BikeBrandNamePageModel({this.radioList = const []}) {}

  List<String> radioList;

  BikeBrandNamePageModel copyWith({List<String>? radioList}) {
    return BikeBrandNamePageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
