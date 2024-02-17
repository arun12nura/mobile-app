// ignore_for_file: must_be_immutable

part of 'ev_car_vendor_details_bloc.dart';

/// Represents the state of EvCarVendorDetails in the application.
class EvCarVendorDetailsState extends Equatable {
  EvCarVendorDetailsState({this.evCarVendorDetailsModelObj});

  EvCarVendorDetailsModel? evCarVendorDetailsModelObj;

  @override
  List<Object?> get props => [
        evCarVendorDetailsModelObj,
      ];
  EvCarVendorDetailsState copyWith(
      {EvCarVendorDetailsModel? evCarVendorDetailsModelObj}) {
    return EvCarVendorDetailsState(
      evCarVendorDetailsModelObj:
          evCarVendorDetailsModelObj ?? this.evCarVendorDetailsModelObj,
    );
  }
}
