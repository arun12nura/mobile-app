// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [ev_car_issue_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class EvCarIssuePageModel extends Equatable {
  EvCarIssuePageModel({this.radioList = const []}) {}

  List<String> radioList;

  EvCarIssuePageModel copyWith({List<String>? radioList}) {
    return EvCarIssuePageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
