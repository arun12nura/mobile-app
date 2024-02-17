// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_one_bloc.dart';

/// Represents the state of LaptopBrandNamePageOne in the application.
class LaptopBrandNamePageOneState extends Equatable {
  LaptopBrandNamePageOneState({this.laptopBrandNamePageOneModelObj});

  LaptopBrandNamePageOneModel? laptopBrandNamePageOneModelObj;

  @override
  List<Object?> get props => [
        laptopBrandNamePageOneModelObj,
      ];
  LaptopBrandNamePageOneState copyWith(
      {LaptopBrandNamePageOneModel? laptopBrandNamePageOneModelObj}) {
    return LaptopBrandNamePageOneState(
      laptopBrandNamePageOneModelObj:
          laptopBrandNamePageOneModelObj ?? this.laptopBrandNamePageOneModelObj,
    );
  }
}
