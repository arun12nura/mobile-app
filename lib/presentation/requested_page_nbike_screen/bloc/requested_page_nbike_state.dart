// ignore_for_file: must_be_immutable

part of 'requested_page_nbike_bloc.dart';

/// Represents the state of RequestedPageNbike in the application.
class RequestedPageNbikeState extends Equatable {
  RequestedPageNbikeState({this.requestedPageNbikeModelObj});

  RequestedPageNbikeModel? requestedPageNbikeModelObj;

  @override
  List<Object?> get props => [
        requestedPageNbikeModelObj,
      ];
  RequestedPageNbikeState copyWith(
      {RequestedPageNbikeModel? requestedPageNbikeModelObj}) {
    return RequestedPageNbikeState(
      requestedPageNbikeModelObj:
          requestedPageNbikeModelObj ?? this.requestedPageNbikeModelObj,
    );
  }
}
