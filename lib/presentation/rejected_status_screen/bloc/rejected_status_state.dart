// ignore_for_file: must_be_immutable

part of 'rejected_status_bloc.dart';

/// Represents the state of RejectedStatus in the application.
class RejectedStatusState extends Equatable {
  RejectedStatusState({this.rejectedStatusModelObj});

  RejectedStatusModel? rejectedStatusModelObj;

  @override
  List<Object?> get props => [
        rejectedStatusModelObj,
      ];
  RejectedStatusState copyWith({RejectedStatusModel? rejectedStatusModelObj}) {
    return RejectedStatusState(
      rejectedStatusModelObj:
          rejectedStatusModelObj ?? this.rejectedStatusModelObj,
    );
  }
}
