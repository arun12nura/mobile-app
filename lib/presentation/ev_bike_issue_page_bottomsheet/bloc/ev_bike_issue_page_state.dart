// ignore_for_file: must_be_immutable

part of 'ev_bike_issue_page_bloc.dart';

/// Represents the state of EvBikeIssuePage in the application.
class EvBikeIssuePageState extends Equatable {
  EvBikeIssuePageState({
    this.labelThreeController,
    this.radioGroup = "",
    this.evBikeIssuePageModelObj,
  });

  TextEditingController? labelThreeController;

  EvBikeIssuePageModel? evBikeIssuePageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        labelThreeController,
        radioGroup,
        evBikeIssuePageModelObj,
      ];
  EvBikeIssuePageState copyWith({
    TextEditingController? labelThreeController,
    String? radioGroup,
    EvBikeIssuePageModel? evBikeIssuePageModelObj,
  }) {
    return EvBikeIssuePageState(
      labelThreeController: labelThreeController ?? this.labelThreeController,
      radioGroup: radioGroup ?? this.radioGroup,
      evBikeIssuePageModelObj:
          evBikeIssuePageModelObj ?? this.evBikeIssuePageModelObj,
    );
  }
}
