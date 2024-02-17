// ignore_for_file: must_be_immutable

part of 'ev_car_issue_page_bloc.dart';

/// Represents the state of EvCarIssuePage in the application.
class EvCarIssuePageState extends Equatable {
  EvCarIssuePageState({
    this.labelThreeController,
    this.radioGroup = "",
    this.evCarIssuePageModelObj,
  });

  TextEditingController? labelThreeController;

  EvCarIssuePageModel? evCarIssuePageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        labelThreeController,
        radioGroup,
        evCarIssuePageModelObj,
      ];
  EvCarIssuePageState copyWith({
    TextEditingController? labelThreeController,
    String? radioGroup,
    EvCarIssuePageModel? evCarIssuePageModelObj,
  }) {
    return EvCarIssuePageState(
      labelThreeController: labelThreeController ?? this.labelThreeController,
      radioGroup: radioGroup ?? this.radioGroup,
      evCarIssuePageModelObj:
          evCarIssuePageModelObj ?? this.evCarIssuePageModelObj,
    );
  }
}
