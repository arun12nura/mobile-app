// ignore_for_file: must_be_immutable

part of 'car_page_bloc.dart';

/// Represents the state of CarPage in the application.
class CarPageState extends Equatable {
  CarPageState({
    this.nameController,
    this.issuesController,
    this.radioGroup = "",
    this.carPageModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? issuesController;

  CarPageModel? carPageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        nameController,
        issuesController,
        radioGroup,
        carPageModelObj,
      ];
  CarPageState copyWith({
    TextEditingController? nameController,
    TextEditingController? issuesController,
    String? radioGroup,
    CarPageModel? carPageModelObj,
  }) {
    return CarPageState(
      nameController: nameController ?? this.nameController,
      issuesController: issuesController ?? this.issuesController,
      radioGroup: radioGroup ?? this.radioGroup,
      carPageModelObj: carPageModelObj ?? this.carPageModelObj,
    );
  }
}
