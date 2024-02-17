// ignore_for_file: must_be_immutable

part of 'bike_page_bloc.dart';

/// Represents the state of BikePage in the application.
class BikePageState extends Equatable {
  BikePageState({
    this.nameController,
    this.issuesController,
    this.radioGroup = "",
    this.bikePageModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? issuesController;

  BikePageModel? bikePageModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        nameController,
        issuesController,
        radioGroup,
        bikePageModelObj,
      ];
  BikePageState copyWith({
    TextEditingController? nameController,
    TextEditingController? issuesController,
    String? radioGroup,
    BikePageModel? bikePageModelObj,
  }) {
    return BikePageState(
      nameController: nameController ?? this.nameController,
      issuesController: issuesController ?? this.issuesController,
      radioGroup: radioGroup ?? this.radioGroup,
      bikePageModelObj: bikePageModelObj ?? this.bikePageModelObj,
    );
  }
}
