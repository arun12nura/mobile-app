// ignore_for_file: must_be_immutable

part of 'computer_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ComputerPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ComputerPageEvent extends Equatable {}

/// Event that is dispatched when the ComputerPage widget is first created.
class ComputerPageInitialEvent extends ComputerPageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends ComputerPageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
