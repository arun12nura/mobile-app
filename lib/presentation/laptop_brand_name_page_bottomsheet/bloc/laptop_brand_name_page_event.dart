// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopBrandNamePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopBrandNamePageEvent extends Equatable {}

/// Event that is dispatched when the LaptopBrandNamePage widget is first created.
class LaptopBrandNamePageInitialEvent extends LaptopBrandNamePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends LaptopBrandNamePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends LaptopBrandNamePageEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
