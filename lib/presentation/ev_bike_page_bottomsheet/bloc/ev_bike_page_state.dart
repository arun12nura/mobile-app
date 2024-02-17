// ignore_for_file: must_be_immutable

part of 'ev_bike_page_bloc.dart';

/// Represents the state of EvBikePage in the application.
class EvBikePageState extends Equatable {
  EvBikePageState({
    this.nameController,
    this.issuesController,
    this.radioGroup = "",
    this.evBikePageModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? issuesController;

  EvBikePageModel? evBikePageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        nameController,
        issuesController,
        radioGroup,
        evBikePageModelObj,
      ];
  EvBikePageState copyWith({
    TextEditingController? nameController,
    TextEditingController? issuesController,
    String? radioGroup,
    EvBikePageModel? evBikePageModelObj,
  }) {
    return EvBikePageState(
      nameController: nameController ?? this.nameController,
      issuesController: issuesController ?? this.issuesController,
      radioGroup: radioGroup ?? this.radioGroup,
      evBikePageModelObj: evBikePageModelObj ?? this.evBikePageModelObj,
    );
  }
}
