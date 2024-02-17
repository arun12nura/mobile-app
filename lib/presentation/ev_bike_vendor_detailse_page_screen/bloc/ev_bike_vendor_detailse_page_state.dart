// ignore_for_file: must_be_immutable

part of 'ev_bike_vendor_detailse_page_bloc.dart';

/// Represents the state of EvBikeVendorDetailsePage in the application.
class EvBikeVendorDetailsePageState extends Equatable {
  EvBikeVendorDetailsePageState({this.evBikeVendorDetailsePageModelObj});

  EvBikeVendorDetailsePageModel? evBikeVendorDetailsePageModelObj;

  @override
  List<Object?> get props => [
        evBikeVendorDetailsePageModelObj,
      ];
  EvBikeVendorDetailsePageState copyWith(
      {EvBikeVendorDetailsePageModel? evBikeVendorDetailsePageModelObj}) {
    return EvBikeVendorDetailsePageState(
      evBikeVendorDetailsePageModelObj: evBikeVendorDetailsePageModelObj ??
          this.evBikeVendorDetailsePageModelObj,
    );
  }
}
