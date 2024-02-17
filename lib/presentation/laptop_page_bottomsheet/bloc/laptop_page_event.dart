// ignore_for_file: must_be_immutable

part of 'laptop_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopPageEvent extends Equatable {}

/// Event that is dispatched when the LaptopPage widget is first created.
class LaptopPageInitialEvent extends LaptopPageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends LaptopPageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends LaptopPageEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
