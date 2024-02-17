// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_two_bloc.dart';

/// Represents the state of LaptopBrandNamePageTwo in the application.
class LaptopBrandNamePageTwoState extends Equatable {
  LaptopBrandNamePageTwoState({
    this.radioGroup = "",
    this.warrantyDetails = "",
    this.laptopBrandNamePageTwoModelObj,
  });

  LaptopBrandNamePageTwoModel? laptopBrandNamePageTwoModelObj;

  String radioGroup;

  String warrantyDetails;

  @override
  List<Object?> get props => [
        radioGroup,
        warrantyDetails,
        laptopBrandNamePageTwoModelObj,
      ];
  LaptopBrandNamePageTwoState copyWith({
    String? radioGroup,
    String? warrantyDetails,
    LaptopBrandNamePageTwoModel? laptopBrandNamePageTwoModelObj,
  }) {
    return LaptopBrandNamePageTwoState(
      radioGroup: radioGroup ?? this.radioGroup,
      warrantyDetails: warrantyDetails ?? this.warrantyDetails,
      laptopBrandNamePageTwoModelObj:
          laptopBrandNamePageTwoModelObj ?? this.laptopBrandNamePageTwoModelObj,
    );
  }
}
