// ignore_for_file: must_be_immutable

part of 'accepted_status_bloc.dart';

/// Represents the state of AcceptedStatus in the application.
class AcceptedStatusState extends Equatable {
  AcceptedStatusState({this.acceptedStatusModelObj});

  AcceptedStatusModel? acceptedStatusModelObj;

  @override
  List<Object?> get props => [
        acceptedStatusModelObj,
      ];
  AcceptedStatusState copyWith({AcceptedStatusModel? acceptedStatusModelObj}) {
    return AcceptedStatusState(
      acceptedStatusModelObj:
          acceptedStatusModelObj ?? this.acceptedStatusModelObj,
    );
  }
}
