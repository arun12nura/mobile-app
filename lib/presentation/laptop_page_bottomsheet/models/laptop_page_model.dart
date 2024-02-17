// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [laptop_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class LaptopPageModel extends Equatable {
  LaptopPageModel({this.radioList = const []}) {}

  List<String> radioList;

  LaptopPageModel copyWith({List<String>? radioList}) {
    return LaptopPageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
