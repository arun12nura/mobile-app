// ignore_for_file: must_be_immutable

part of 'computer_requested_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ComputerRequestedPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ComputerRequestedPageEvent extends Equatable {}

/// Event that is dispatched when the ComputerRequestedPage widget is first created.
class ComputerRequestedPageInitialEvent extends ComputerRequestedPageEvent {
  @override
  List<Object?> get props => [];
}
