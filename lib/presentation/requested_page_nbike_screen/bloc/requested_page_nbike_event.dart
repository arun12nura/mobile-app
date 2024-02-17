// ignore_for_file: must_be_immutable

part of 'requested_page_nbike_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RequestedPageNbike widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RequestedPageNbikeEvent extends Equatable {}

/// Event that is dispatched when the RequestedPageNbike widget is first created.
class RequestedPageNbikeInitialEvent extends RequestedPageNbikeEvent {
  @override
  List<Object?> get props => [];
}
