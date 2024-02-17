// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [car_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class CarPageModel extends Equatable {
  CarPageModel({this.radioList = const []}) {}

  List<String> radioList;

  CarPageModel copyWith({List<String>? radioList}) {
    return CarPageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
