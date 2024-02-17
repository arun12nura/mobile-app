// ignore_for_file: must_be_immutable

part of 'car_brand_name_page_bloc.dart';

/// Represents the state of CarBrandNamePage in the application.
class CarBrandNamePageState extends Equatable {
  CarBrandNamePageState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.carBrandNamePageModelObj,
  });

  CarBrandNamePageModel? carBrandNamePageModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        carBrandNamePageModelObj,
      ];
  CarBrandNamePageState copyWith({
    String? radioGroup,
    String? radioGroup1,
    CarBrandNamePageModel? carBrandNamePageModelObj,
  }) {
    return CarBrandNamePageState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      carBrandNamePageModelObj:
          carBrandNamePageModelObj ?? this.carBrandNamePageModelObj,
    );
  }
}
