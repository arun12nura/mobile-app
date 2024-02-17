// ignore_for_file: must_be_immutable

part of 'ev_bike_brand_name_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvBikeBrandNamePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvBikeBrandNamePageEvent extends Equatable {}

/// Event that is dispatched when the EvBikeBrandNamePage widget is first created.
class EvBikeBrandNamePageInitialEvent extends EvBikeBrandNamePageEvent {
  @override
  List<Object?> get props => [];
}

class EvbikebrandnamepageItemEvent extends EvBikeBrandNamePageEvent {
  EvbikebrandnamepageItemEvent({
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
