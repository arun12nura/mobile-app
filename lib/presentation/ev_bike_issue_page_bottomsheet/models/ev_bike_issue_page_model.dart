// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [ev_bike_issue_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class EvBikeIssuePageModel extends Equatable {
  EvBikeIssuePageModel({this.radioList = const []}) {}

  List<String> radioList;

  EvBikeIssuePageModel copyWith({List<String>? radioList}) {
    return EvBikeIssuePageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
