// ignore_for_file: must_be_immutable

part of 'ev_bike_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvBikePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvBikePageEvent extends Equatable {}

/// Event that is dispatched when the EvBikePage widget is first created.
class EvBikePageInitialEvent extends EvBikePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends EvBikePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
