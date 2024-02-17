// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [car_brand_name_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class CarBrandNamePageModel extends Equatable {
  CarBrandNamePageModel({
    this.radioList = const [],
    this.radioList1 = const [],
  }) {}

  List<String> radioList;

  List<String> radioList1;

  CarBrandNamePageModel copyWith({
    List<String>? radioList,
    List<String>? radioList1,
  }) {
    return CarBrandNamePageModel(
      radioList: radioList ?? this.radioList,
      radioList1: radioList1 ?? this.radioList1,
    );
  }

  @override
  List<Object?> get props => [radioList, radioList1];
}
