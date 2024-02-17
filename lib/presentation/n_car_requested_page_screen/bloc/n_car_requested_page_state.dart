// ignore_for_file: must_be_immutable

part of 'n_car_requested_page_bloc.dart';

/// Represents the state of NCarRequestedPage in the application.
class NCarRequestedPageState extends Equatable {
  NCarRequestedPageState({this.nCarRequestedPageModelObj});

  NCarRequestedPageModel? nCarRequestedPageModelObj;

  @override
  List<Object?> get props => [
        nCarRequestedPageModelObj,
      ];
  NCarRequestedPageState copyWith(
      {NCarRequestedPageModel? nCarRequestedPageModelObj}) {
    return NCarRequestedPageState(
      nCarRequestedPageModelObj:
          nCarRequestedPageModelObj ?? this.nCarRequestedPageModelObj,
    );
  }
}
