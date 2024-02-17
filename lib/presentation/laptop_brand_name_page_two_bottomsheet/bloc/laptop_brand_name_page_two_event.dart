// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopBrandNamePageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopBrandNamePageTwoEvent extends Equatable {}

/// Event that is dispatched when the LaptopBrandNamePageTwo widget is first created.
class LaptopBrandNamePageTwoInitialEvent extends LaptopBrandNamePageTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends LaptopBrandNamePageTwoEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends LaptopBrandNamePageTwoEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
