// ignore_for_file: must_be_immutable

part of 'ev_car_requested_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EvCarRequestedPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EvCarRequestedPageEvent extends Equatable {}

/// Event that is dispatched when the EvCarRequestedPage widget is first created.
class EvCarRequestedPageInitialEvent extends EvCarRequestedPageEvent {
  @override
  List<Object?> get props => [];
}
