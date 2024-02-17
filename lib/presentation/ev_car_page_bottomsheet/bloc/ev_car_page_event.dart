// ignore_for_file: must_be_immutable

part of 'ev_car_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvCarPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvCarPageEvent extends Equatable {}

/// Event that is dispatched when the EvCarPage widget is first created.
class EvCarPageInitialEvent extends EvCarPageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends EvCarPageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
