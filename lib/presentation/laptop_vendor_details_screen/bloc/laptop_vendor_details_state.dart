// ignore_for_file: must_be_immutable

part of 'laptop_vendor_details_bloc.dart';

/// Represents the state of LaptopVendorDetails in the application.
class LaptopVendorDetailsState extends Equatable {
  LaptopVendorDetailsState({this.laptopVendorDetailsModelObj});

  LaptopVendorDetailsModel? laptopVendorDetailsModelObj;

  @override
  List<Object?> get props => [
        laptopVendorDetailsModelObj,
      ];
  LaptopVendorDetailsState copyWith(
      {LaptopVendorDetailsModel? laptopVendorDetailsModelObj}) {
    return LaptopVendorDetailsState(
      laptopVendorDetailsModelObj:
          laptopVendorDetailsModelObj ?? this.laptopVendorDetailsModelObj,
    );
  }
}
