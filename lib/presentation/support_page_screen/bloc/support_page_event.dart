// ignore_for_file: must_be_immutable

part of 'support_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SupportPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SupportPageEvent extends Equatable {}

/// Event that is dispatched when the SupportPage widget is first created.
class SupportPageInitialEvent extends SupportPageEvent {
  @override
  List<Object?> get props => [];
}
