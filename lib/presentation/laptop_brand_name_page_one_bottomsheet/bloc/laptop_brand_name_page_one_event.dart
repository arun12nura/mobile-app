// ignore_for_file: must_be_immutable

part of 'laptop_brand_name_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LaptopBrandNamePageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaptopBrandNamePageOneEvent extends Equatable {}

/// Event that is dispatched when the LaptopBrandNamePageOne widget is first created.
class LaptopBrandNamePageOneInitialEvent extends LaptopBrandNamePageOneEvent {
  @override
  List<Object?> get props => [];
}

class SelectorItemEvent extends LaptopBrandNamePageOneEvent {
  SelectorItemEvent({
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
