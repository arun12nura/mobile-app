// ignore_for_file: must_be_immutable

part of 'car_brand_name_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CarBrandNamePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarBrandNamePageEvent extends Equatable {}

/// Event that is dispatched when the CarBrandNamePage widget is first created.
class CarBrandNamePageInitialEvent extends CarBrandNamePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CarBrandNamePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends CarBrandNamePageEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
