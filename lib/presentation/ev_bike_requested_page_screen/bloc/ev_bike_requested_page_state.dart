// ignore_for_file: must_be_immutable

part of 'ev_bike_requested_page_bloc.dart';

/// Represents the state of EvBikeRequestedPage in the application.
class EvBikeRequestedPageState extends Equatable {
  EvBikeRequestedPageState({this.evBikeRequestedPageModelObj});

  EvBikeRequestedPageModel? evBikeRequestedPageModelObj;

  @override
  List<Object?> get props => [
        evBikeRequestedPageModelObj,
      ];
  EvBikeRequestedPageState copyWith(
      {EvBikeRequestedPageModel? evBikeRequestedPageModelObj}) {
    return EvBikeRequestedPageState(
      evBikeRequestedPageModelObj:
          evBikeRequestedPageModelObj ?? this.evBikeRequestedPageModelObj,
    );
  }
}
