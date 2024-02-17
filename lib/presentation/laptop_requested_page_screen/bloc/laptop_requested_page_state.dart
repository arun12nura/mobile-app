// ignore_for_file: must_be_immutable

part of 'laptop_requested_page_bloc.dart';

/// Represents the state of LaptopRequestedPage in the application.
class LaptopRequestedPageState extends Equatable {
  LaptopRequestedPageState({this.laptopRequestedPageModelObj});

  LaptopRequestedPageModel? laptopRequestedPageModelObj;

  @override
  List<Object?> get props => [
        laptopRequestedPageModelObj,
      ];
  LaptopRequestedPageState copyWith(
      {LaptopRequestedPageModel? laptopRequestedPageModelObj}) {
    return LaptopRequestedPageState(
      laptopRequestedPageModelObj:
          laptopRequestedPageModelObj ?? this.laptopRequestedPageModelObj,
    );
  }
}
