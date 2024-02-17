// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [laptop_issue_page_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class LaptopIssuePageModel extends Equatable {
  LaptopIssuePageModel({this.radioList = const []}) {}

  List<String> radioList;

  LaptopIssuePageModel copyWith({List<String>? radioList}) {
    return LaptopIssuePageModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
