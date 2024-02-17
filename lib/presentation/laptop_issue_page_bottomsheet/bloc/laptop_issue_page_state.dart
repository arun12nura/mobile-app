// ignore_for_file: must_be_immutable

part of 'laptop_issue_page_bloc.dart';

/// Represents the state of LaptopIssuePage in the application.
class LaptopIssuePageState extends Equatable {
  LaptopIssuePageState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.laptopIssuePageModelObj,
  });

  LaptopIssuePageModel? laptopIssuePageModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        laptopIssuePageModelObj,
      ];
  LaptopIssuePageState copyWith({
    String? radioGroup,
    String? radioGroup1,
    LaptopIssuePageModel? laptopIssuePageModelObj,
  }) {
    return LaptopIssuePageState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      laptopIssuePageModelObj:
          laptopIssuePageModelObj ?? this.laptopIssuePageModelObj,
    );
  }
}
