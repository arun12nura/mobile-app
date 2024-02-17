// ignore_for_file: must_be_immutable

part of 'computer_page_bloc.dart';

/// Represents the state of ComputerPage in the application.
class ComputerPageState extends Equatable {
  ComputerPageState({
    this.nameController,
    this.warrantyDetailsController,
    this.issuesController,
    this.radioGroup = "",
    this.computerPageModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? warrantyDetailsController;

  TextEditingController? issuesController;

  ComputerPageModel? computerPageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        nameController,
        warrantyDetailsController,
        issuesController,
        radioGroup,
        computerPageModelObj,
      ];
  ComputerPageState copyWith({
    TextEditingController? nameController,
    TextEditingController? warrantyDetailsController,
    TextEditingController? issuesController,
    String? radioGroup,
    ComputerPageModel? computerPageModelObj,
  }) {
    return ComputerPageState(
      nameController: nameController ?? this.nameController,
      warrantyDetailsController:
          warrantyDetailsController ?? this.warrantyDetailsController,
      issuesController: issuesController ?? this.issuesController,
      radioGroup: radioGroup ?? this.radioGroup,
      computerPageModelObj: computerPageModelObj ?? this.computerPageModelObj,
    );
  }
}
