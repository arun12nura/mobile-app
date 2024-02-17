// ignore_for_file: must_be_immutable

part of 'n_car_vendor_details_bloc.dart';

/// Represents the state of NCarVendorDetails in the application.
class NCarVendorDetailsState extends Equatable {
  NCarVendorDetailsState({this.nCarVendorDetailsModelObj});

  NCarVendorDetailsModel? nCarVendorDetailsModelObj;

  @override
  List<Object?> get props => [
        nCarVendorDetailsModelObj,
      ];
  NCarVendorDetailsState copyWith(
      {NCarVendorDetailsModel? nCarVendorDetailsModelObj}) {
    return NCarVendorDetailsState(
      nCarVendorDetailsModelObj:
          nCarVendorDetailsModelObj ?? this.nCarVendorDetailsModelObj,
    );
  }
}
