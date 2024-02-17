// ignore_for_file: must_be_immutable

part of 'laptop_issue_page_one_bloc.dart';

/// Represents the state of LaptopIssuePageOne in the application.
class LaptopIssuePageOneState extends Equatable {
  LaptopIssuePageOneState({
    this.issuesController,
    this.radioGroup = "",
    this.laptopIssuePageOneModelObj,
  });

  TextEditingController? issuesController;

  LaptopIssuePageOneModel? laptopIssuePageOneModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        issuesController,
        radioGroup,
        laptopIssuePageOneModelObj,
      ];
  LaptopIssuePageOneState copyWith({
    TextEditingController? issuesController,
    String? radioGroup,
    LaptopIssuePageOneModel? laptopIssuePageOneModelObj,
  }) {
    return LaptopIssuePageOneState(
      issuesController: issuesController ?? this.issuesController,
      radioGroup: radioGroup ?? this.radioGroup,
      laptopIssuePageOneModelObj:
          laptopIssuePageOneModelObj ?? this.laptopIssuePageOneModelObj,
    );
  }
}
