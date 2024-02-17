// ignore_for_file: must_be_immutable

part of 'previous_bookings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PreviousBookings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PreviousBookingsEvent extends Equatable {}

/// Event that is dispatched when the PreviousBookings widget is first created.
class PreviousBookingsInitialEvent extends PreviousBookingsEvent {
  @override
  List<Object?> get props => [];
}
