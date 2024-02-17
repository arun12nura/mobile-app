// ignore_for_file: must_be_immutable

part of 'car_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CarPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarPageEvent extends Equatable {}

/// Event that is dispatched when the CarPage widget is first created.
class CarPageInitialEvent extends CarPageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CarPageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
