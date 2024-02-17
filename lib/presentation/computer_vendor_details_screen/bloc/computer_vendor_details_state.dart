// ignore_for_file: must_be_immutable

part of 'computer_vendor_details_bloc.dart';

/// Represents the state of ComputerVendorDetails in the application.
class ComputerVendorDetailsState extends Equatable {
  ComputerVendorDetailsState({this.computerVendorDetailsModelObj});

  ComputerVendorDetailsModel? computerVendorDetailsModelObj;

  @override
  List<Object?> get props => [
        computerVendorDetailsModelObj,
      ];
  ComputerVendorDetailsState copyWith(
      {ComputerVendorDetailsModel? computerVendorDetailsModelObj}) {
    return ComputerVendorDetailsState(
      computerVendorDetailsModelObj:
          computerVendorDetailsModelObj ?? this.computerVendorDetailsModelObj,
    );
  }
}
