// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_bloc.dart';

/// Represents the state of LaptopBrandNamePage in the application.
class LaptopBrandNamePageState extends Equatable {
  LaptopBrandNamePageState({
    this.radioGroup = "",
    this.brandName = "",
    this.laptopBrandNamePageModelObj,
  });

  LaptopBrandNamePageModel? laptopBrandNamePageModelObj;

  String radioGroup;

  String brandName;

  @override
  List<Object?> get props => [
        radioGroup,
        brandName,
        laptopBrandNamePageModelObj,
      ];
  LaptopBrandNamePageState copyWith({
    String? radioGroup,
    String? brandName,
    LaptopBrandNamePageModel? laptopBrandNamePageModelObj,
  }) {
    return LaptopBrandNamePageState(
      radioGroup: radioGroup ?? this.radioGroup,
      brandName: brandName ?? this.brandName,
      laptopBrandNamePageModelObj:
          laptopBrandNamePageModelObj ?? this.laptopBrandNamePageModelObj,
    );
  }
}
