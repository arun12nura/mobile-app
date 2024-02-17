// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopBrandNamePageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopBrandNamePageThreeEvent extends Equatable {}

/// Event that is dispatched when the LaptopBrandNamePageThree widget is first created.
class LaptopBrandNamePageThreeInitialEvent
    extends LaptopBrandNamePageThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends LaptopBrandNamePageThreeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends LaptopBrandNamePageThreeEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
