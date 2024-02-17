// ignore_for_file: must_be_immutable

part of 'bike_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BikePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BikePageEvent extends Equatable {}

/// Event that is dispatched when the BikePage widget is first created.
class BikePageInitialEvent extends BikePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends BikePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
