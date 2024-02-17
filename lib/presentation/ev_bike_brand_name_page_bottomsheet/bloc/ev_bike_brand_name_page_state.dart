// ignore_for_file: must_be_immutable

part of 'ev_bike_brand_name_page_bloc.dart';

/// Represents the state of EvBikeBrandNamePage in the application.
class EvBikeBrandNamePageState extends Equatable {
  EvBikeBrandNamePageState({this.evBikeBrandNamePageModelObj});

  EvBikeBrandNamePageModel? evBikeBrandNamePageModelObj;

  @override
  List<Object?> get props => [
        evBikeBrandNamePageModelObj,
      ];
  EvBikeBrandNamePageState copyWith(
      {EvBikeBrandNamePageModel? evBikeBrandNamePageModelObj}) {
    return EvBikeBrandNamePageState(
      evBikeBrandNamePageModelObj:
          evBikeBrandNamePageModelObj ?? this.evBikeBrandNamePageModelObj,
    );
  }
}
