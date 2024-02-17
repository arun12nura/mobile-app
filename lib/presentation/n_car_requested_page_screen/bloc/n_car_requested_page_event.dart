// ignore_for_file: must_be_immutable

part of 'n_car_requested_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NCarRequestedPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NCarRequestedPageEvent extends Equatable {}

/// Event that is dispatched when the NCarRequestedPage widget is first created.
class NCarRequestedPageInitialEvent extends NCarRequestedPageEvent {
  @override
  List<Object?> get props => [];
}
