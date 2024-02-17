// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [ev_car_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class EvCarPageModel extends Equatable {
  EvCarPageModel({this.radioList = const []}) {}

  List<String> radioList;

  EvCarPageModel copyWith({List<String>? radioList}) {
    return EvCarPageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
