// ignore_for_file: must_be_immutable

part of 'st_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StPageEvent extends Equatable {}

/// Event that is dispatched when the StPage widget is first created.
class StPageInitialEvent extends StPageEvent {
  @override
  List<Object?> get props => [];
}
