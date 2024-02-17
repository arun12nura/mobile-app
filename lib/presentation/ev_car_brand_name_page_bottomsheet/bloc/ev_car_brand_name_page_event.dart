// ignore_for_file: must_be_immutable

part of 'ev_car_brand_name_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvCarBrandNamePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvCarBrandNamePageEvent extends Equatable {}

/// Event that is dispatched when the EvCarBrandNamePage widget is first created.
class EvCarBrandNamePageInitialEvent extends EvCarBrandNamePageEvent {
  @override
  List<Object?> get props => [];
}

class CarbrandselectorItemEvent extends EvCarBrandNamePageEvent {
  CarbrandselectorItemEvent({
    required this.index,
    this.radioGroup,
    this.radioGroup1,
  });

  int index;

  String? radioGroup;

  String? radioGroup1;

  @override
  List<Object?> get props => [
        index,
        radioGroup,
        radioGroup1,
      ];
}
