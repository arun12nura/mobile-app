// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_three_bloc.dart';

/// Represents the state of LaptopBrandNamePageThree in the application.
class LaptopBrandNamePageThreeState extends Equatable {
  LaptopBrandNamePageThreeState({
    this.radioGroup = "",
    this.warrantyDetails = "",
    this.laptopBrandNamePageThreeModelObj,
  });

  LaptopBrandNamePageThreeModel? laptopBrandNamePageThreeModelObj;

  String radioGroup;

  String warrantyDetails;

  @override
  List<Object?> get props => [
        radioGroup,
        warrantyDetails,
        laptopBrandNamePageThreeModelObj,
      ];
  LaptopBrandNamePageThreeState copyWith({
    String? radioGroup,
    String? warrantyDetails,
    LaptopBrandNamePageThreeModel? laptopBrandNamePageThreeModelObj,
  }) {
    return LaptopBrandNamePageThreeState(
      radioGroup: radioGroup ?? this.radioGroup,
      warrantyDetails: warrantyDetails ?? this.warrantyDetails,
      laptopBrandNamePageThreeModelObj: laptopBrandNamePageThreeModelObj ??
          this.laptopBrandNamePageThreeModelObj,
    );
  }
}
