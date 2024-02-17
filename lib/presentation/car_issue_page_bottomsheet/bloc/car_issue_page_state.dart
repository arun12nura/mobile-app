// ignore_for_file: must_be_immutable

part of 'car_issue_page_bloc.dart';

/// Represents the state of CarIssuePage in the application.
class CarIssuePageState extends Equatable {
  CarIssuePageState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.carIssuePageModelObj,
  });

  CarIssuePageModel? carIssuePageModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        carIssuePageModelObj,
      ];
  CarIssuePageState copyWith({
    String? radioGroup,
    String? radioGroup1,
    CarIssuePageModel? carIssuePageModelObj,
  }) {
    return CarIssuePageState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      carIssuePageModelObj: carIssuePageModelObj ?? this.carIssuePageModelObj,
    );
  }
}
