// ignore_for_file: must_be_immutable

part of 'my_booking_bloc.dart';

/// Represents the state of MyBooking in the application.
class MyBookingState extends Equatable {
  MyBookingState({this.myBookingModelObj});

  MyBookingModel? myBookingModelObj;

  @override
  List<Object?> get props => [
        myBookingModelObj,
      ];
  MyBookingState copyWith({MyBookingModel? myBookingModelObj}) {
    return MyBookingState(
      myBookingModelObj: myBookingModelObj ?? this.myBookingModelObj,
    );
  }
}
