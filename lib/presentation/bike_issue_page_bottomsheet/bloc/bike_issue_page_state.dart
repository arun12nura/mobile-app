// ignore_for_file: must_be_immutable

part of 'bike_issue_page_bloc.dart';

/// Represents the state of BikeIssuePage in the application.
class BikeIssuePageState extends Equatable {
  BikeIssuePageState({
    this.labelThreeController,
    this.radioGroup = "",
    this.bikeIssuePageModelObj,
  });

  TextEditingController? labelThreeController;

  BikeIssuePageModel? bikeIssuePageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        labelThreeController,
        radioGroup,
        bikeIssuePageModelObj,
      ];
  BikeIssuePageState copyWith({
    TextEditingController? labelThreeController,
    String? radioGroup,
    BikeIssuePageModel? bikeIssuePageModelObj,
  }) {
    return BikeIssuePageState(
      labelThreeController: labelThreeController ?? this.labelThreeController,
      radioGroup: radioGroup ?? this.radioGroup,
      bikeIssuePageModelObj:
          bikeIssuePageModelObj ?? this.bikeIssuePageModelObj,
    );
  }
}
