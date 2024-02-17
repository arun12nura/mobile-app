// ignore_for_file: must_be_immutable

part of 'laptop_page_bloc.dart';

/// Represents the state of LaptopPage in the application.
class LaptopPageState extends Equatable {
  LaptopPageState({
    this.warrantyDetailsController,
    this.issuesController,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.laptopPageModelObj,
  });

  TextEditingController? warrantyDetailsController;

  TextEditingController? issuesController;

  LaptopPageModel? laptopPageModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        warrantyDetailsController,
        issuesController,
        radioGroup,
        radioGroup1,
        laptopPageModelObj,
      ];
  LaptopPageState copyWith({
    TextEditingController? warrantyDetailsController,
    TextEditingController? issuesController,
    String? radioGroup,
    String? radioGroup1,
    LaptopPageModel? laptopPageModelObj,
  }) {
    return LaptopPageState(
      warrantyDetailsController:
          warrantyDetailsController ?? this.warrantyDetailsController,
      issuesController: issuesController ?? this.issuesController,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      laptopPageModelObj: laptopPageModelObj ?? this.laptopPageModelObj,
    );
  }
}
