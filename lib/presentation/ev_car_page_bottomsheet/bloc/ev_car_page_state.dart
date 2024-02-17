// ignore_for_file: must_be_immutable

part of 'ev_car_page_bloc.dart';

/// Represents the state of EvCarPage in the application.
class EvCarPageState extends Equatable {
  EvCarPageState({
    this.nameController,
    this.issuesController,
    this.radioGroup = "",
    this.evCarPageModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? issuesController;

  EvCarPageModel? evCarPageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        nameController,
        issuesController,
        radioGroup,
        evCarPageModelObj,
      ];
  EvCarPageState copyWith({
    TextEditingController? nameController,
    TextEditingController? issuesController,
    String? radioGroup,
    EvCarPageModel? evCarPageModelObj,
  }) {
    return EvCarPageState(
      nameController: nameController ?? this.nameController,
      issuesController: issuesController ?? this.issuesController,
      radioGroup: radioGroup ?? this.radioGroup,
      evCarPageModelObj: evCarPageModelObj ?? this.evCarPageModelObj,
    );
  }
}
