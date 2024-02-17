// ignore_for_file: must_be_immutable

part of 'ev_bike_requested_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvBikeRequestedPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvBikeRequestedPageEvent extends Equatable {}

/// Event that is dispatched when the EvBikeRequestedPage widget is first created.
class EvBikeRequestedPageInitialEvent extends EvBikeRequestedPageEvent {
  @override
  List<Object?> get props => [];
}
