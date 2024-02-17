// ignore_for_file: must_be_immutable

part of 'ev_car_brand_name_page_bloc.dart';

/// Represents the state of EvCarBrandNamePage in the application.
class EvCarBrandNamePageState extends Equatable {
  EvCarBrandNamePageState({this.evCarBrandNamePageModelObj});

  EvCarBrandNamePageModel? evCarBrandNamePageModelObj;

  @override
  List<Object?> get props => [
        evCarBrandNamePageModelObj,
      ];
  EvCarBrandNamePageState copyWith(
      {EvCarBrandNamePageModel? evCarBrandNamePageModelObj}) {
    return EvCarBrandNamePageState(
      evCarBrandNamePageModelObj:
          evCarBrandNamePageModelObj ?? this.evCarBrandNamePageModelObj,
    );
  }
}
