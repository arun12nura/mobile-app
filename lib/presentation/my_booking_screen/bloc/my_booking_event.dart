// ignore_for_file: must_be_immutable

part of 'my_booking_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBooking widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyBookingEvent extends Equatable {}

/// Event that is dispatched when the MyBooking widget is first created.
class MyBookingInitialEvent extends MyBookingEvent {
  @override
  List<Object?> get props => [];
}
