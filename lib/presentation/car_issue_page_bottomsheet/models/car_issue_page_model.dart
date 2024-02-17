// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [car_issue_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class CarIssuePageModel extends Equatable {
  CarIssuePageModel({this.radioList = const []}) {}

  List<String> radioList;

  CarIssuePageModel copyWith({List<String>? radioList}) {
    return CarIssuePageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
