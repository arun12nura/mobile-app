// ignore_for_file: must_be_immutable

part of 'bike_brand_name_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BikeBrandNamePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BikeBrandNamePageEvent extends Equatable {}

/// Event that is dispatched when the BikeBrandNamePage widget is first created.
class BikeBrandNamePageInitialEvent extends BikeBrandNamePageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends BikeBrandNamePageEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends BikeBrandNamePageEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
