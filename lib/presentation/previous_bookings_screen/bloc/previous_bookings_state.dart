// ignore_for_file: must_be_immutable

part of 'previous_bookings_bloc.dart';

/// Represents the state of PreviousBookings in the application.
class PreviousBookingsState extends Equatable {
  PreviousBookingsState({this.previousBookingsModelObj});

  PreviousBookingsModel? previousBookingsModelObj;

  @override
  List<Object?> get props => [
        previousBookingsModelObj,
      ];
  PreviousBookingsState copyWith(
      {PreviousBookingsModel? previousBookingsModelObj}) {
    return PreviousBookingsState(
      previousBookingsModelObj:
          previousBookingsModelObj ?? this.previousBookingsModelObj,
    );
  }
}
