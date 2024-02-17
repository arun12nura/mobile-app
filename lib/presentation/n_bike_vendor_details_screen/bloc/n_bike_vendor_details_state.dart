// ignore_for_file: must_be_immutable

part of 'n_bike_vendor_details_bloc.dart';

/// Represents the state of NBikeVendorDetails in the application.
class NBikeVendorDetailsState extends Equatable {
  NBikeVendorDetailsState({this.nBikeVendorDetailsModelObj});

  NBikeVendorDetailsModel? nBikeVendorDetailsModelObj;

  @override
  List<Object?> get props => [
        nBikeVendorDetailsModelObj,
      ];
  NBikeVendorDetailsState copyWith(
      {NBikeVendorDetailsModel? nBikeVendorDetailsModelObj}) {
    return NBikeVendorDetailsState(
      nBikeVendorDetailsModelObj:
          nBikeVendorDetailsModelObj ?? this.nBikeVendorDetailsModelObj,
    );
  }
}
