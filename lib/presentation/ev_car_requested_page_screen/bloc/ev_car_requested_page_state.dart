// ignore_for_file: must_be_immutable

part of 'ev_car_requested_page_bloc.dart';

/// Represents the state of EvCarRequestedPage in the application.
class EvCarRequestedPageState extends Equatable {
  EvCarRequestedPageState({this.evCarRequestedPageModelObj});

  EvCarRequestedPageModel? evCarRequestedPageModelObj;

  @override
  List<Object?> get props => [
        evCarRequestedPageModelObj,
      ];
  EvCarRequestedPageState copyWith(
      {EvCarRequestedPageModel? evCarRequestedPageModelObj}) {
    return EvCarRequestedPageState(
      evCarRequestedPageModelObj:
          evCarRequestedPageModelObj ?? this.evCarRequestedPageModelObj,
    );
  }
}
