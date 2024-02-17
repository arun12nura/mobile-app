// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [laptop_issue_page_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class LaptopIssuePageOneModel extends Equatable {
  LaptopIssuePageOneModel({this.radioList = const []}) {}

  List<String> radioList;

  LaptopIssuePageOneModel copyWith({List<String>? radioList}) {
    return LaptopIssuePageOneModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
